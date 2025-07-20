return {
  "neovim/nvim-lspconfig",
  enabled = true,
  config = function()
    vim.diagnostic.config({
      virtual_text = { current_line = true }
    })
    vim.lsp.inlay_hint.enable(true, { bufnr = buffer})
  end
}
