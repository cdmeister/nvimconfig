return {
  "neovim/nvim-lspconfig",
  config = function()
    vim.diagnostic.config({
      virtual_text = { current_line = true }
    })
  end

}
