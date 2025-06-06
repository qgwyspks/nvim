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
                    require("which-key").show { global = false }
                end,
                desc = "快捷键",
            },
        },
    },
}
