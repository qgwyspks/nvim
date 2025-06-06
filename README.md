[![Typing SVG](https://readme-typing-svg.demolab.com?font=Fira+Code&size=30&pause=1000&color=000000&center=true%C2%A0%E7%9C%9F&vCenter=false%C2%A0%E5%81%87&repeat=true%C2%A0%E7%9C%9F&random=false%C2%A0%E5%81%87&width=435&lines=NVIM)](https://git.io/typing-svg)

---

:rainbow: 个人的 「**Nvim**」 配置方案，使用 [**lazy.nvim**](https://github.com/folke/lazy.nvim) :zzz: ​插件管理器。

<img src="../img/nvim.png" width="50%"/><img src="../img/which-key.png" width="50%"/> 

<!-- markdown-toc GitLab -->

- [配置结构](#配置结构)
- [插件列表](#插件列表)
- [快捷键](#快捷键)

<!-- markdown-toc -->


## 配置结构

```dir
.
├── README.md
├── init.lua                 -- 配置入口
└── lua/                     -- LUA 配置目录
    ├── core/                -- 设置目录
    │   ├── autocmds.lua     -- 自动命令
    │   ├── keymaps.lua      -- 快捷键
    │   ├── lazy.lua         -- Lazy.nvim 安装
    │   └── options.lua      -- 常规配置
    └── plugins/             -- 插件配置目录
        ├── colorscheme.lua  -- 主题
        ├── configs/         -- 各个插件的配置目录
        ├── editor.lua       -- 代码工具
        ├── lsp.lua          -- 代码补全
        ├── snacks.lua       -- snacks.nvim 插件列表
        ├── ui.lua           -- ui 界面
        └── util.lua         -- 工具
```

## 插件列表

- ~~[onedark](https://github.com/navarasu/onedark.nvim) ：主题~~
- [gruvbox](https://github.com/ellisonleao/gruvbox.nvim)：主题 :evergreen_tree:（设置了透明背景）
- [snacks](https://github.com/folke/snacks.nvim)：一系列插件合集
- ~~[alpha-nvim](https://github.com/goolord/alpha-nvim)：欢迎界面 :foggy:~~
- ~~[nvim-tree](https://github.com/nvim-tree/nvim-tree.lua)：文件树 :file_folder:~~
- [lualine](https://github.com/nvim-lualine/lualine.nvim)：状态栏
- ~~[bufferline](https://github.com/akinsho/bufferline.nvim)：缓冲区~~
- [gitsigns](https://github.com/lewis6991/gitsigns.nvim)：git 提示 :bulb:
- ~~[vim-startuptime](https://github.com/dstein64/vim-startuptime)：查看 `nvim` 启动事件时间信息 :hourglass:~~
- ~~[nvim-notify](https://github.com/rcarriga/nvim-notify)：消息通知 :bell:~~
- ~~[toggleterm](https://github.com/akinsho/toggleterm.nvim)：内置终端~~
- [which-key](https://github.com/folke/which-key.nvim)：显示可用的快捷键弹出窗口 :mag:
- [noice](https://github.com/folke/noice.nvim)：替换了 `messages`、`cmdline` 和 `popupmenu` 的 UI
- [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)：语法高亮 :vertical_traffic_light:
- ~~[nvim-autopairs](https://github.com/windwp/nvim-autopairs)：自动配对~~
- ~~[guard](https://github.com/nvimdev/guard.nvim)：异步格式化和代码检查工具~~
- [conform](https://github.com/stevearc/conform.nvim)：格式化插件
- ~~[markview](https://github.com/OXY2DEV/markview.nvim)：Markdown 预览~~
- [render-markdown](https://github.com/MeanderingProgrammer/render-markdown.nvim)：Markdown 预览
- ~~[trouble](https://github.com/folke/trouble.nvim)：诊断列表~~
- ~~[mason](https://github.com/williamboman/mason.nvim)：LSP 管理~~
- ~~[mason-lspconfig](https://github.com/williamboman/mason-lspconfig.nvim)：连接 mason 和 lspconfig~~
- [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)：Nvim LSP 客户端的配置
- ~~[lspsaga](https://github.com/nvimdev/lspsaga.nvim)：增强 LSP~~
- ~~[nvim-cmp](https://github.com/hrsh7th/nvim-cmp)：补全引擎插件~~
- [blink.cmp](https://github.com/Saghen/blink.cmp)：支持 LSP 和外部源的高校补全插件

删除了 Mason 系列，改用系统的包管理器来自己安装需要的 LSP 和 Formatter 等。

## 快捷键

| 模式   | 键                 | 说明 |
| ------ | ------------------ | ---- |
| normal | <kbd>\<leader\></kbd>  <kbd>wd</kbd> | 删除当前窗口（不能删除最后一个） |
| normal | <kbd>\<leader\></kbd>  <kbd>-</kbd> | 水平分屏 |
| normal | <kbd>\<leader\></kbd> <kbd>\\</kbd> | 垂直分屏 |
| normal | <kbd>\<leader\></kbd> <kbd>e</kbd> | 打开文件树 |
| normal | <kbd>\<leader\></kbd> <kbd>f</kbd> | 代码格式化 |
| normal | <kbd>\<leader\></kbd> <kbd>z</kbd> | Zen 模式 |
| normal | <kbd>\<leader\></kbd> <kbd>Z</kbd> | Zoom 模式 |
| normal | <kbd>\<leader\></kbd> <kbd>na</kbd> | Noice: 打开 |
| normal | <kbd>\<leader\></kbd> <kbd>nc</kbd> | Noice: 关闭 |
| normal | <kbd>\<leader\></kbd> <kbd>pp</kbd> | 选择器: 所有 |
| normal | <kbd>\<leader\></kbd> <kbd>pb</kbd> | 选择器: 缓冲区 |
| normal | <kbd>\<leader\></kbd> <kbd>pf</kbd> | 选择器: 文件 |
| normal | <kbd>\<leader\></kbd> <kbd>pgb</kbd> | 选择器: git 分支 |
| normal | <kbd>\<leader\></kbd> <kbd>pgd</kbd> | 选择器: git 差异 |
| normal | <kbd>\<leader\></kbd> <kbd>pgl</kbd> | 选择器: git 日志 |
| normal | <kbd>\<leader\></kbd> <kbd>pgs</kbd> | 选择器: git 状态 |
| normal | <kbd>\<leader\></kbd> <kbd>pld</kbd> | LSP 定义 |
| normal | <kbd>\<leader\></kbd> <kbd>plD</kbd> | LSP 声明 |
| normal | <kbd>\<leader\></kbd> <kbd>pli</kbd> | LSP 实施 |
| normal | <kbd>\<leader\></kbd> <kbd>plr</kbd> | LSP 参考 |
| normal | <kbd>\<leader\></kbd> <kbd>plt</kbd> | LSP 类型定义 |
| normal | <kbd>\<leader\></kbd> <kbd>pls</kbd> | LSP 文档符号 |
| normal | <kbd>\<leader\></kbd> <kbd>pd</kbd> | LSP 诊断当前文件 |

