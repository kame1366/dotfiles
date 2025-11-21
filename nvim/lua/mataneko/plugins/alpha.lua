return {
	"goolord/alpha-nvim",
	event = "VimEnter",
	config = function()
		local alpha = require("alpha")
		local dashboard = require("alpha.themes.dashboard")

		-- set header
		dashboard.section.header.val = {
			"                                                     ",
			"  ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗ ",
			"  ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║ ",
			"  ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║ ",
			"  ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║ ",
			"  ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║ ",
			"  ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝ ",
			"                                                     ",
		}

		-- set menu
		dashboard.section.buttons.val = {
			dashboard.button("e", "  > New file", "<cmd>ene<CR>"),
			dashboard.button("SPC ft", "  > Toggle file explorer", "<cmd>NvimTreeToggle<CR>"),
			dashboard.button("SPC tf", "󰈞  > Find File", "<cmd>Telescope find_files<CR>"),
			dashboard.button("SPC tk", "  > Find keymaps", "<cmd>Telescope keymaps<CR>"),
			dashboard.button("SPC wr", "󰦛  > Restore Session For Current Dir", "<cmd>SessionRestore<CR>"),
			dashboard.button("q", "󱠡  > Quit NVIM", ":qa<CR>"),
		}

		-- send config to alpha
		alpha.setup(dashboard.opts)

		-- disable folding on alpha buffer
		vim.cmd([[autocmd FileType alpha setlocal nofoldenable]])
	end,
}
