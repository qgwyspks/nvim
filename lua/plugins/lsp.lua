return {
    {
        'saghen/blink.cmp',
        version = '*',
        dependencies = { "rafamadriz/friendly-snippets" },
        event = { "InsertEnter" },

        ---@module 'blink.cmp'
        opts = {
            keymap = {
                preset = 'none',  -- 'default'
                ['<Tab>'] = {
                    'select_next',  -- 选择下一项，如果在底部循环到列表顶部
                    'snippet_forward',  -- 跳转到下一个片段占位符
                    'fallback',
                },
                ['<S-Tab>'] = {  -- Shift-Tab
                    'select_prev',
                    'snippet_backward',
                    'fallback',
                },
                ['<CR>'] = { 'accept', 'fallback' },
                ['<C-e>'] = { 'hide', 'fallback' },
            },
            appearance = {
                use_nvim_cmp_as_default = false,
                nerd_font_variant = 'mono',
                kind_icons = _G._kind_icons,
            },
            completion = {
                menu = {
                    auto_show = function(ctx) return ctx.mode ~= 'cmdline' end,
                    border = 'rounded',
                    winhighlight = 'Normal:None,FloatBorder:None,CursorLine:BlinkCmpMenuSelection,Search:None',
                    scrolloff = 2,
                    scrollbar = true,
                    draw = {
                        padding = 1,
                        gap = 2,
                        treesitter = { 'lsp' },
                        columns = {
                            { 'kind_icon' },
                            { 'label', 'label_description', gap = 1 },
                            { 'kind' },
                        },
                    },
                },
                documentation = {
                    auto_show = true,  -- 自动显示文档
                    auto_show_delay_ms = 200,
                    treesitter_highlighting = true,  -- CPU 卡顿可以设置为 false
                    window = {
                        max_width = 40,
                        border = 'rounded',
                        winhighlight = 'Normal:None,FloatBorder:None,Search:None',
                    },
                },
                list = { selection = { preselect = false, auto_insert = false } },  -- 选择列表 'preselect' | 'manual' | 'auto_insert'
                accept = { auto_brackets = { enabled = true } },  -- 自动补全括号
                ghost_text = { enabled = true },  -- 内联虚拟文本
            },
            sources = {
                -- default = { 'lsp', 'path', 'snippets', 'buffer' },
                default = function(ctx)
                    local success, node = pcall(vim.treesitter.get_node)
                    if vim.bo.filetype == 'lua' then
                        return { 'lsp', 'path' }
                    elseif success and node and vim.tbl_contains({ 'comment', 'line_comment', 'block_comment' }, node:type()) then
                        return { 'buffer' }
                    else
                        return { 'lsp', 'path', 'snippets', 'buffer' }
                    end
                end,
                -- cmdline = {},
                --[[
                providers = {
                    markdown = {
                        name = 'RenderMarkdown',
                        module = 'render-markdown.integ.blink',
                        fallbacks = { 'lsp' },
                    },
                },
                --]]
            },
            signature = {
                enabled = true,
                window = {
                    border = 'rounded',
                },
            },
            fuzzy = { implementation = 'prefer_rust_with_warning' },  -- 使用 Rust 实现模糊匹配
        },
        opts_extend = { "sources.default" }
    },
    {
        'neovim/nvim-lspconfig',
        dependencies = { 'saghen/blink.cmp' },
        opts = {},
        config = function()
            require("plugins.configs.lspconfig").setup()
        end
    },
}
