vim.cmd [[packadd packer.nvim]]

local packer = require("packer")

packer.startup({
	function()
		-- Packer can manage itself
		use 'wbthomason/packer.nvim'
		------------- UI ------------------
		-- catppuccin theme
		use {
			"catppuccin/nvim",
			-- 改个别名
			as = "catppuccin",
			config = function()
				require("plugins.catppuccin")
			end
		}
		-- 目录树 nvim-tree
		use {
			'kyazdani42/nvim-tree.lua',
			requires = {
				-- 依赖一个图标插件
				'kyazdani42/nvim-web-devicons'
			},
			config = function()
				-- 插件加载完成后自动运行 nvim-tree.lua 文件中的代码
				require("plugins.nvim-tree")
			end
		}
		-- 大纲预览 vista
		use {
			"liuchengxu/vista.vim",
			config = function()
				require("plugins.vista")
			end
		}
		-- 状态栏 lualine
		use {
			"nvim-lualine/lualine.nvim",
			config = function()
				require("plugins.lualine")
			end
		}
		-- 让状态栏显示 git 信息 gitsigns
		use {
			"lewis6991/gitsigns.nvim",
			requires = {
				"nvim-lua/plenary.nvim"
			},
			config = function()
				require("gitsigns").setup()
			end
		}
		-- bufferline
		use {'kyazdani42/nvim-web-devicons'}
		use {
			'akinsho/bufferline.nvim',
			requires = {
				"famiu/bufdelete.nvim"  -- 删除 buffer 时不影响现有布局
			},
			config = function()
				require('plugins.bufferline')
			end
		}
		-- 显示缩进线 indent-blankline
		use {
			"lukas-reineke/indent-blankline.nvim",
			config = function()
				require("plugins.indent-blankline")
			end
		}
		-- 精美弹窗 nvim-notify
		use {
			"rcarriga/nvim-notify",
			config = function()
				require("plugins.nvim-notify")
			end
		}
		------------- Utils ------------------
		-- 缓存树 undotree
		use {
			"mbbill/undotree",
			config = function()
				require("plugins.undotree")
			end
		}
		-- 模糊查找 telescope
		use {
			"nvim-telescope/telescope.nvim",
			requires = {
				"nvim-lua/plenary.nvim",  -- Lua 开发模块
				"BurntSushi/ripgrep",  -- 文字查找
				"sharkdp/fd"  -- 文字查找
			},
			config = function()
				require("plugins.telescope")
			end
		}
		-- 内置终端 toggleterm
		use {
			"akinsho/toggleterm.nvim",
			config = function()
				require("plugins.toggleterm")
			end
		}
		-- 键位绑定器 which-key
		use {
			"folke/which-key.nvim",
			config = function()
				require("plugins.which-key")
			end
		}
		------------- Editor ------------------
		-- 语法高亮 nvim-treesitter
		use {
			"nvim-treesitter/nvim-treesitter",
			run = ':TSUpdate',
			config = function()
				require("plugins.nvim-treesitter")
			end
		}
		-- 代码格式化 neoformat
		use {
			"sbdchd/neoformat",
			config = function()
				require("plugins.neoformat")
			end
		}
		-- 自动代码补全系列插件 nvim-cmp
		use {
			"hrsh7th/nvim-cmp",  -- 代码补全核心插件，下面都是增强补全的体验插件
			requires = {
				{"onsails/lspkind-nvim"}, -- 为补全添加类似 vscode 的图标
				{"hrsh7th/vim-vsnip"}, -- vsnip 引擎，用于获得代码片段支持
				{"hrsh7th/cmp-vsnip"}, -- 适用于 vsnip 的代码片段源
				{"hrsh7th/cmp-nvim-lsp"}, -- 替换内置 omnifunc，获得更多补全
				{"hrsh7th/cmp-path"}, -- 路径补全
				{"hrsh7th/cmp-buffer"}, -- 缓冲区补全
				{"hrsh7th/cmp-cmdline"}, -- 命令补全
				{"f3fora/cmp-spell"}, -- 拼写建议
				{"rafamadriz/friendly-snippets"}, -- 提供多种语言的代码片段
				{"lukas-reineke/cmp-under-comparator"}, -- 让补全结果的排序更加智能
				{"tzachar/cmp-tabnine", run = "./install.sh"} -- tabnine 源,提供基于 AI 的智能补全
			},
			config = function()
				require("plugins.nvim-cmp")
			end
		}
		-- 灯泡提示代码行为 nvim-lightbulb
		use {
			"kosayoda/nvim-lightbulb",
			config = function()
				require("plugins.nvim-lightbulb")
			end
		}
		-- 自动匹配括号 nvim-autopairs
		use {
			"windwp/nvim-autopairs",
			config = function()
				require("plugins.nvim-autopairs")
			end
		}
		-- 代码注释 Comment
		use {
			'numToStr/Comment.nvim',
			config = function()
				require('Comment').setup()
			end
		}
		------------- LSP ------------------
		-- LSP 基础服务 lspconfig
		use {
			'neovim/nvim-lspconfig',
			config = function()
				require("plugins.nvim-lspconfig")
			end
		}
		-- 自动安装 LSP lsp-installer
		use {
			'williamboman/nvim-lsp-installer',
			config = function()
				require("plugins.nvim-lsp-installer")
			end
		}
		-- LSP UI 美化 lspsaga.nvim
		use {
			"tami5/lspsaga.nvim",
			config = function()
				require("plugins.lspsaga")
			end
		}
		-- LSP 进度提示 fidget
		use {
			"j-hui/fidget.nvim",
			config = function()
				require("plugins.fidget")
			end
		}
		-- 插入模式获得函数签名 lsp_signature
		use {
			"ray-x/lsp_signature.nvim",
			config = function()
				require("plugins.lsp_signature")
			end
		}
		-- 扩展 LSP 扩展 nvim-lint
		use {
			"mfussenegger/nvim-lint",
			config = function()
				require("plugins.nvim-lint")
			end
		}
		------------- DAP ------------------
		-- 代码调试基础插件 nvim-dap
		use {
			"mfussenegger/nvim-dap",
			config = function()
				require("plugins.nvim-dap")
			end
		}
		-- 为代码调试提供内联文本
		use {
			"theHamsta/nvim-dap-virtual-text",
			requires = {
				"mfussenegger/nvim-dap"
			},
			config = function()
				require("plugins.nvim-dap-virtual-text")
			end
		}
		-- 为代码调试提供 UI 界面 nvim-dap-ui
		use {
			"rcarriga/nvim-dap-ui",
			requires = {
				"mfussenegger/nvim-dap"
			},
			config = function()
				require("plugins.nvim-dap-ui")
			end
		}
	end
})

-- 实时生效配置
vim.cmd(
    [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]]
)
