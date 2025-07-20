-- LSP stuff
vim.api.nvim_create_autocmd('LspAttach', {
  callback = function(args)
    local client = assert(vim.lsp.get_client_by_id(args.data.client_id))
     -- Enable auto-completion. Note: Use CTRL-Y to select an item. |complete_CTRL-Y|
    if client:supports_method('textDocument/completion') then
      -- Optional: trigger autocompletion on EVERY keypress. May be slow!
      local chars = {}; for i = 32, 126 do table.insert(chars, string.char(i)) end
      client.server_capabilities.completionProvider.triggerCharacters = chars
      vim.opt.completeopt:append{"noselect"}
      vim.opt.completeopt:append{"menuone"}
      vim.o.winborder='rounded'
      vim.lsp.completion.enable(true, client.id, args.buf, {autotrigger = true})
    end
  end,
})
