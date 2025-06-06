local options = {
	"gruvbox",
	"tokyonight",
}

local M = {}

local function choose_theme(theme)
	vim.cmd("colorscheme " .. theme)
	-- vim.cmd([[colorscheme ]])
end

function M.choose_theme()
	vim.ui.select(options, {
		prompt = "Theme:",
		format_item = function(item)
			return item
		end,
	}, choose_theme)
end

choose_theme("gruvbox")
return M
