print("Hello from init.lua")

require("config.lazy")
require("config.remap")
require("config.set")
require("config.autocmds")

vim.lsp.enable({'clangd'})
