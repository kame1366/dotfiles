return {
  "akinsho/bufferline.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  version = "*",
  opts = {
    options = {
      mode = "tabs",
    },
  },
  config = function()
    local bufferline = require("bufferline")

    bufferline.setup({
      highlights = {
        background = { bg = "none" },
        fill = { bg = "none" },
      }
    })
  end
}
