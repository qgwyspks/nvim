return {
    "folke/snacks.nvim",
    priority = 1000, -- 确保提前加载
    lazy = false,
    ---@type snacks.Config
    opts = {
        animation = { enabled = false }, -- 高效动画
        bigfile = { enabled = true }, -- 处理大文件
        bufdelete = { enabled = false }, -- 删除缓冲区
        dashboard = {
            enabled = true,
            preset = {
                keys = {
                    { icon = " ", key = "f", desc = "Find File", action = ":lua Snacks.dashboard.pick('files')" },
                    { icon = " ", key = "n", desc = "New File", action = ":ene | startinsert" },
                    -- { icon = " ", key = "g", desc = "Find Text", action = ":lua Snacks.dashboard.pick('live_grep')" },
                    {
                        icon = " ",
                        key = "r",
                        desc = "Recent Files",
                        action = ":lua Snacks.dashboard.pick('oldfiles')",
                    },
                    {
                        icon = " ",
                        key = "c",
                        desc = "Config",
                        action = ":lua Snacks.dashboard.pick('files', {cwd = vim.fn.stdpath('config')})",
                    },
                    -- { icon = " ", key = "s", desc = "Restore Session", section = "session" },
                    {
                        icon = "󰒲 ",
                        key = "L",
                        desc = "Lazy",
                        action = ":Lazy",
                        enabled = package.loaded.lazy ~= nil,
                    },
                    { icon = " ", key = "q", desc = "Quit", action = ":qa" },
                },
                header = [[
    ▒▓▓▓▓▓▓▓▓▓▓▓▓▓▒    ▒▓▓▓▓▒        ▒▓▓▓▓▒
    ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▒    ▒▓▓▓▓▓       ▒▓▓▓▓▒
   ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒      ▓▓▓▓▓▓▒▒▒▒▒▓▓▓▓▓▒
                         ▓▓▓▓▓▓▓▓▓▓▓▓▓▒
                           ▒▒▒▒▒▒▒▒
    ▒▒▒▒▒▒
   ▓▓▓▓▓▓▓
   ▓▓▓▓▓▓▓▒               ▒▒▒▒▒▒▒
   ▒▓▓▓▓▓▓▓▒            ▒▓▓▓▓▓▓▓▒
    ▒▓▓▓▓▓▓▓▓▓▒▒▒▒▒▒▒▒▓▓▓▓▓▓▓▓▒
     ▒▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▒
       ▒▒▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▒ ]],
            },
            formats = {
                -- key = function(item)
                --     return { { "[", hl = "special" }, { item.key, hl = "key" }, { "]", hl = "special" } }
                -- end,
                -- header = { hl = "Type" },  -- 标题高亮
            },
            sections = {
                { section = "header" },
                { pane = 2, section = "keys", gap = 1, padding = 1 }, -- 键盘映射
                {
                    pane = 2,
                    icon = " ",
                    title = "Recent Files",
                    section = "recent_files",
                    limit = 4,
                    cwd = true,
                    indent = 1,
                    padding = 1,
                }, -- 最近打开的文件(当前目录)
                -- { pane = 2, icon = " ", title = "Projects", section = "projects", limit = 2, indent = 1, padding = 1 },
                { section = "startup" }, -- 启动统计时间
            },
        }, -- 仪表盘(替代 alpha.nvim)
        debug = { enabled = false }, -- 调试器
        dim = { enabled = false }, -- 其他部分变暗来聚焦于活动范围
        explorer = {
            enabled = true,
            hiddent = true, -- 显示隐藏文件
            git_status = true, -- 显示 git 状态
            diagnostics = true, -- 显示诊断信息
            follow_file = true, -- 跟随当前文件
        }, -- 文件浏览器(替代 nvim-tree)
        git = { enabled = false }, -- git 工具
        gitbrowse = { enabled = false }, -- git 浏览器
        image = { enabled = false }, -- 图片预览(基于 Kitty Graphics)
        indent = { enabled = true }, -- 缩进线(替代 indent-blankline.nvim)
        input = { enabled = false }, -- 输入提示(更好的 vim.ui.input)
        layout = { enabled = false }, -- 窗口布局
        lazygit = { enabled = false },
        notifier = { enabled = false }, -- 漂亮的 vim.notify
        notify = { enabled = false }, -- 通知(替代 nvim-notify)
        picker = { enabled = true }, -- 选择器(替代 telescope.nvim)
        profiler = { enabled = false }, -- 性能分析器
        quickfile = { enabled = true }, -- 快速呈现文件内容
        rename = { enabled = false }, -- LSP 集成的文件重命名
        scope = { enabled = true }, -- 访问检测
        scratch = { enabled = false }, -- 使用持久文件暂存缓冲区
        scroll = { enabled = true }, -- 平滑滚动
        statuscolumn = {
            enabled = false,
            left = { "mark", "sign" }, -- 左侧标记和符号
            right = { "fold", "git" }, -- 右侧诊断、折叠和 git 状态
            folds = {
                open = false,
                git_hl = false,
            },
            git = {
                patterns = { "GitSign", "MiniDiffSign" },
            },
            refresh = 50,
        }, -- 状态列
        terminal = { enabled = false }, -- 终端
        toggle = { enabled = false }, -- 切换窗口
        util = { enabled = false }, -- 实用工具
        win = { enabled = false }, -- 窗口管理
        words = { enabled = true }, -- 自动显示 LSP 引用并快速跳转
        zen = { enabled = true }, -- zen 模式
    },
    keys = {
        {
            "<leader>e",
            function()
                Snacks.picker.explorer()
            end,
            desc = "文件树",
        },
        -- { "<leader>t", function() Snacks.terminal.open() end, desc = "终端" },
        -- Picker
        {
            "<leader>pp",
            function()
                Snacks.picker()
            end,
            desc = "选择器: 所有",
        },
        {
            "<leader>pf",
            function()
                Snacks.picker.files()
            end,
            desc = "选择器: 文件",
        },
        -- { "<leader>pg", function() Snacks.picker.grep() end, desc = "选择器: 正则" },
        {
            "<leader>pb",
            function()
                Snacks.picker.buffers()
            end,
            desc = "选择器: 缓冲区",
        },
        {
            "<leader>pgb",
            function()
                Snacks.picker.git_branches()
            end,
            desc = "选择器: git 分支",
        },
        {
            "<leader>pgd",
            function()
                Snacks.picker.git_diff()
            end,
            desc = "选择器: git 差异",
        },
        {
            "<leader>pgl",
            function()
                Snacks.picker.git_log()
            end,
            desc = "选择器: git 日志",
        },
        {
            "<leader>pgs",
            function()
                Snacks.picker.git_status()
            end,
            desc = "选择器: git 状态",
        },
        -- LSP
        {
            "<leader>pld",
            function()
                Snacks.picker.lsp_definitions()
            end,
            desc = "LSP 定义",
        },
        {
            "<leader>plD",
            function()
                Snacks.picker.lsp_declarations()
            end,
            desc = "LSP 声明",
        },
        {
            "<leader>pli",
            function()
                Snacks.picker.lsp_implementations()
            end,
            desc = "LSP 实施",
        },
        {
            "<leader>plr",
            function()
                Snacks.picker.lsp_references()
            end,
            nowait = true,
            desc = "LSP 参考",
        },
        {
            "<leader>plt",
            function()
                Snacks.picker.lsp_type_definitions()
            end,
            desc = "LSP 类型定义",
        },
        {
            "<leader>pls",
            function()
                Snacks.picker.lsp_symbols()
            end,
            desc = "LSP 文档符号",
        },
        -- { "<leader>pd", function() Snacks.picker.diagnostics() end, desc = "LSP 诊断" },
        {
            "<leader>pd",
            function()
                Snacks.picker.diagnostics_buffer()
            end,
            desc = "LSP 诊断当前文件",
        },
        -- { "<leader>sS", function() Snacks.picker.lsp_workspace_symbols() end, desc = "LSP Workspace Symbols" },
        -- Zen
        {
            "<leader>z",
            function()
                Snacks.zen()
            end,
            desc = "Zen 模式",
        },
        {
            "<leader>Z",
            function()
                Snacks.zen.zoom()
            end,
            desc = "快速移动模式",
        },
    },
}
