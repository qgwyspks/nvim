-- <leader> 设置为空格
vim.g.mapleader = " "
vim.g.maplocalleader = " "

local map = vim.keymap.set

local opts = {
    expr = true,
    silent = true,
}

map("i", "jk", "<Esc>", opts)

-- Move to window using the <ctrl> hjkl 按键
map("n", "<C-h>", "<C-w>h", { desc = "Go to left window" })
map("n", "<C-j>", "<C-w>j", { desc = "Go to lower window" })
map("n", "<C-k>", "<C-w>k", { desc = "Go to upper window" })
map("n", "<C-l>", "<C-w>l", { desc = "Go to right window" })
-- Resize window using <ctrl> arrow keys
-- Mac 下快捷键冲突
-- map("n", "<C-Up>", "<cmd>resize +2<cr>", { desc = "Increase window height" })
-- map("n", "<C-Down>", "<cmd>resize -2<cr>", { desc = "Decrease window height" })
-- map("n", "<C-Left>", "<cmd>vertical resize -2<cr>", { desc = "Decrease window width" })
-- map("n", "<C-Right>", "<cmd>vertical resize +2<cr>", { desc = "Increase window width" })
-- windows
map("n", "<leader>wd", "<C-W>c", { desc = "窗口: 删除" })
-- map("n", "<leader>w-", "<C-W>s", { desc = "Split window below" })
-- map("n", "<leader>w\\", "<C-W>v", { desc = "Split window right" })
map("n", "<leader>-", "<C-W>s", { desc = "水平分割" })
map("n", "<leader>\\", "<C-W>v", { desc = "垂直分割" })

-- 退出终端插入模式
map("t", "<Esc>", "<C-\\><C-n>", opts)
