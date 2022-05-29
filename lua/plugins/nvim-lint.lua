require("lint").linters_by_ft = {
    python = {"pylint"}
    -- javascript = {"eslint"},
    -- typescript = {"eslint"},
    -- go = {"golangcilint"}
}

-- 配置 pylint，pylint 配置文件需要自己准备，这里不再演示
require("lint.linters.pylint").args = {
    "-f",
    "json",
    "--rcfile=~/.config/nvim/lint/pylint.conf"
}

vim.cmd([[
au BufEnter * lua require('lint').try_lint()
au BufWritePost * lua require('lint').try_lint()
]])
