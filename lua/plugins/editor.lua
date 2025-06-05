return {
    -- 树解析生成
    {
        "nvim-treesitter/nvim-treesitter",
        version = false,
        build = ":TSUpdate",
        -- event = { "LazyFile", "VeryLazy" },
        lazy = vim.fn.argc(-1) == 0,
        opts = {
            highlight = { enable = true },
            indent = { enable = true },
            ensure_installed = {
                "bash",
                "c",
                "cpp",
                "rust",
                "dockerfile",
                -- "html",
                "json",
                "lua",
                "markdown",
                "markdown_inline",
                "python",
                "toml",
                "regex",
                -- "xml", "yaml",
                "vim",
                "vimdoc",
                "go",
                "gomod",
                "gowork",
                "gosum",
            },
        },
        config = function(_, opts)
            require("nvim-treesitter").setup(opts)
        end,
    },

    -- -- 异步格式化和 linting
    -- {
    --     "nvimdev/guard.nvim",
    --     -- lazy load by ft
    --     -- lazy = true,
    --     ft = { "lua", "python", "go", "json" },
    --     dependencies = {
    --         "nvimdev/guard-collection",
    --     },
    --     config = function()
    --         require("plugins.configs.guard")
    --     end,
    -- },
    {
        "stevearc/conform.nvim",
        event = { "BufWritePre" },
        cmd = { "ConformInfo" },
        keys = {
            {
                "<leader>f",
                function()
                    require("conform").format { async = true }
                end,
                mode = "",
                desc = "代码格式化",
            },
        },
        ---@module "conform"
        ---@type conform.setupOpts
        opts = {
            formatters_by_ft = {
                lua = { "stylua" },
                go = { "goimports", "gofmt" },
                python = { "ruff_format" },
                sh = { "shfmt" },
                ["_"] = { "trim_whitespace" },
            },
            default_format_opts = {
                lsp_format = "fallback",
            },
            format_on_save = {
                timeout_ms = 500,
                lsp_format = "fallback",
            },
            format_after_save = {
                lsp_format = "fallback",
            },
            formatters = {
                my_formatter = {
                    cmmmand = "ruff",
                    args = { "format", "--config", "~/.config/custom_ruff_config.toml", "$FILENAME" },
                },
                ruff_format = {
                    prepend_args = { "--config", "~/.config/custom_ruff_config.toml" },
                },
            },
        },
    },
    -- Markdown 渲染
    {
        "MeanderingProgrammer/render-markdown.nvim",
        dependencies = { "nvim-treesitter/nvim-treesitter", "nvim-tree/nvim-web-devicons" },
        ft = { "markdown" },
        ---@module 'render-markdown'
        ---@type render.md.UserConfig
        opts = {
            render_modes = true, -- 渲染模式 { 'n', 'c'}
            pipe_table = { preset = "round" }, -- 圆边框
            heading = { border = true },
            indent = { enabled = true },
            code = {
                sign = "language",
                left_pad = 2,
                right_pad = 4,
            },
            checkbox = {
                unchecked = { icon = "✘ " },
                checked = {
                    icon = "✔ ",
                    scope_highlight = "@Markup.strikethrough",
                },
                custom = { todo = { rendered = "◯ " } },
            },
        },
    },
}
