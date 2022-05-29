-- 设定各种文本的字符编码
vim.o.encoding = "UTF-8"
-- 设定在无操作时，交互文件刷写到磁盘的等待毫秒数（默认为 4000）
vim.o.updatetime = 100
-- 设定等待按键时长的毫秒数
vim.o.timeoutlen = 500
-- 设定光标上下两侧最少保留的屏幕行数
vim.o.scrolloff = 10
vim.o.sidescrolloff = 10
-- 是否高亮当前文本行
vim.o.cursorline = true
-- 是否开启语法高亮
vim.o.syntax = "enable"
-- 是否在屏幕最后一行显示命令
vim.o.showcmd = true
-- 是否开启高亮搜索
vim.o.hlsearch = true
-- 是否在搜索时忽略大小写
vim.o.ignorecase = true
-- 是否开启在搜索时如果有大写字母，则关闭忽略大小写的选项
vim.o.smartcase = true
-- 是否边输入边搜索
vim.o.incsearch = true
-- 是否开启单词拼写检查
vim.o.spell = true
-- 设定单词拼写检查的语言
vim.o.spelllang = "en_us,cjk"
-- 当文件被外部程序修改时，自动挂载
vim.o.autoread = true
vim.bo.autoread = true
-- 是否支持鼠标操作
vim.o.mouse = "a"
-- 是否开启备份文件
vim.o.backup = false
vim.o.writebackup = false
-- 是否开启交换文件
vim.o.swapfile = false
-- 是否开启命令行补全
vim.o.wildmenu = true
-- 是否显示绝对行号
vim.o.number = true
-- 是否显示相对行号
vim.o.relativenumber = true
-- 是否启用系统剪切板
vim.o.clipboard = "unnamedplus"
-- 是否开启自动缩进
vim.o.autoindent = true
-- 设定自动缩进的策略为 plugin
vim.o.filetype = "plugin"
-- 是否开启代码折叠
vim.o.foldenable = true
-- 指定代码折叠的策略是按照缩进进行的
vim.o.foldmethod = "indent"
-- 是否在插入括号时短暂跳转到另一半括号上
vim.o.showmatch = true
-- 是否特殊显示空格等字符
vim.o.list = true
-- 是否允许缓冲区未保存时就切换
vim.o.hidden = true
-- 是否开启 xterm 兼容的终端 24 位彩色支持
vim.o.termguicolors = true
-- 是否透明背景
vim.g.background_transparency = true

-- 指定 undotree 缓存存放路径
vim.g.undotree_dir = "~/.cache/nvim/undodir"

-- 指定 python 解释器路径
vim.g.python_path = "/opt/anaconda/bin/python"
