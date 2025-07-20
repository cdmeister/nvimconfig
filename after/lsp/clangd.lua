return {
  cmd = { 'clangd',  '--query-driver=/**', '--background-index', '--clang-tidy', '--log=verbose'},
  root_markers = { 'compile_commands.json', 'compile_flags.txt' },
  filetypes = { 'c', 'cpp' },
}

