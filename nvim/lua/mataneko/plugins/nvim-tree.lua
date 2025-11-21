return {
  "nvim-tree/nvim-tree.lua",
  dependencies = "nvim-tree/nvim-web-devicons",
  config = function()
    local nvimtree = require("nvim-tree")

    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1

    nvimtree.setup({
      view = {
        width = 35,
        side = "right",
        relativenumber = false,
      },

      renderer = {
        indent_markers = {
          enable = true,
        },
        icons = {},
      },

      actions = {
        open_file = {
          window_picker = {
            enable = true,
          },
        },
      },

      filters = {
        custom = { ".DS_Store" },
      },

      git = {
        ignore = false,
      },
    })

    -- set keymaps
    local keymap = vim.keymap

    keymap.set("n", "<leader>ft", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle file explorer" })                         -- toggle file explorer
    keymap.set("n", "<leader>ff", "<cmd>NvimTreeFindFileToggle<CR>", { desc = "Toggle file explorer on current file" }) -- toggle file explorer on current file
    keymap.set("n", "<leader>fc", "<cmd>NvimTreeCollapse<CR>", { desc = "Collapse file explorer" })                     -- collapse file explorer
    keymap.set("n", "<leader>fr", "<cmd>NvimTreeRefresh<CR>", { desc = "Refresh file explorer" })                       -- refresh file explorer
  end
}
