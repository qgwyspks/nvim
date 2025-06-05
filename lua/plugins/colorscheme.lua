return {
    -- {
    --     "sainnhe/everforest",
    --     lazy = false,
    --     config = function()
    --         -- load the colorscheme here
    --         vim.cmd([[colorscheme everforest]])
    --     end,
    -- },
    -- https://github.com/folke/tokyonight.nvim
    -- {
    --     "folke/tokyonight.nvim",
    --     lazy = false,
    --     -- opts = {
    --     --     style = "moon",
    --     --     transparent = true,  -- 透明背景
    --     -- },
    --     config = function()
    --         require("tokyonight").setup({
    --             style = "moon",  -- "storm", "day", "night"
    --             transparent = true,  -- 透明背景
    --             terminal_colors = true,  -- 终端颜色
    --             styles = {
    --                 sidebars = "transparent",  -- 侧边栏透明
    --                 floats = "transparent",  -- 浮动窗口透明
    --             },
    --             on_highlights = function(hl, c)
    --                 hl["@keyword.function"] = { fg = "#fca7ea", italic = true }
    --             end
    --         })
    --         vim.cmd([[ colorscheme tokyonight ]])
    --     end,
    -- },
    -- https://github.com/ellisonleao/gruvbox.nvim
    {
        "ellisonleao/gruvbox.nvim",
        lazy = false,
        proiority = 1000,
        config = function()
            local c = { fg = "#ff966c", italic = true }
            require("gruvbox").setup {
                italic = {
                    strings = true,
                    emphasis = true,
                    comments = true,
                    operators = false,
                    folds = true,
                },
                transparent_mode = true, -- 透明背景
                overrides = {
                    -- ["@function"] = { link = "GruvboxGreenBold", italic = true },
                    -- ["Keyword"] = { fg = "#ff966c", italic = true },
                    -- ["Function"] = { fg = "#86e1fc", italic = true },
                    ["@comment"] = { fg = "#c3e88d", italic = true },
                    -- ["GruvboxGreenBold"] = { fg = "#fca7ea", bold = true },
                    -- ["@lsp.type.function"] = { link = "Special" },
                    -- ["@lsp.type.function"] = { fg = "#fe8019", italic = true },
                    -- ["@keyword"] = c,  -- #86e1fc   #636da6  #ff966c  #c3e88d  #fca7ea  #fb4934
                    -- ["GruvboxRed"] = { fg = "#ff966c", italic = true },  -- #fb4934
                    -- ["@keyword.return"] = c,
                    -- ["pythonStatement"] = c,
                },
            }
            vim.o.background = "dark" -- or "light"
            vim.cmd [[ colorscheme gruvbox ]]
        end,
    },
    -- {
    --     "navarasu/onedark.nvim",
    --     lazy = false,
    --     config = function()
    --         require("onedark").setup({
    --             style = "dark",
    --             transparent = true
    --         })
    --         require("onedark").load()
    --         -- vim.cmd([[colorscheme onedark]])
    --     end,
    -- }
}
