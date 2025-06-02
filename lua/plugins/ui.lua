return {
    -- 状态栏
    {
        "nvim-lualine/lualine.nvim",
        dependencies = { 'nvim-tree/nvim-web-devicons' },
        config = function()
            require("plugins.configs.lualine")
        end
    },

    -- 左侧 git 提示
    -- {
    --     "lewis6991/gitsigns.nvim",
    --     config = function()
    --         require("plugins.configs.gitsigns")
    --     end
    -- },

}
