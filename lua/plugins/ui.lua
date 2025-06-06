return {
    -- 状态栏
    {
        "nvim-lualine/lualine.nvim",
        dependencies = { "nvim-tree/nvim-web-devicons" },
        config = function()
            require "plugins.configs.lualine"
        end,
    },
    {
        "folke/noice.nvim",
        event = "VeryLazy",
        dependencies = {
            "MunifTanjim/nui.nvim",
        },
        keys = {
            {
                "<leader>na",
                function()
                    require("noice").cmd "enable"
                end,
                desc = "Noice: 打开",
            },
            {
                "<leader>nd",
                function()
                    require("noice").cmd "disable"
                end,
                desc = "Noice: 关闭",
            },
        },
        config = function()
            require "plugins.configs.noice"
        end,
    },
    -- 左侧 git 提示
    {
        "lewis6991/gitsigns.nvim",
        config = function()
            require "plugins.configs.gitsigns"
        end,
    },
}
