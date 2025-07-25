return {

  "nvim-treesitter/nvim-treesitter",
  lazy = false,
  branch = 'main',
  build = ":TSUpdate",
  enabled = true,
  config = function () 
     require('nvim-treesitter').install{"c", "cpp", "lua", "vim", "vimdoc", "query", "elixir", "heex", "javascript", "html"}
  end
}

