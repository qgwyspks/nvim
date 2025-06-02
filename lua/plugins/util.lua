return {
    {
        "folke/which-key.nvim",
        event = "VeryLazy",
        opts = {
            preset = "helix",
            keys = {
                scroll_down = "<c-d>",
                scroll_up = "<c-u>",
            },
            icons = {
                mappings = false,
            },
        },
        keys = {
            {
                "<leader>?",
                function()
                    require("which-key").show({ global = false })
                end,
                desc = "快捷键",
            },
            {
                "<leader>.",
                function()
                    require("which-key").show({ loop = true })
                end,
                desc = "快捷键窗口保持",
            }
        },
    },
    {
        'folke/noice.nvim',
        event = "VeryLazy",
        dependencies = {
            "MunifTanjim/nui.nvim",
        },
        keys = {
            { "<leader>na", function() require("noice").cmd("enable") end, desc = "Noice Enable" },
            { "<leader>nd", function() require("noice").cmd("disable") end, desc = "Noice Disable" },
        },
        config = function()
            require("plugins.configs.noice")
        end,
    },
}
