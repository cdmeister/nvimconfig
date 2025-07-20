print("Hello from init.lua")

require("config.lazy")
require("config.remap")
require("config.set")
require("config.autocmds")

-- Load the colorscheme
vim.cmd('colorscheme tokyonight-night')

-- Start LSP server
vim.lsp.enable({'clangd'})
