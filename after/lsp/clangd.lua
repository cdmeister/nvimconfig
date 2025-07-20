return {
  cmd = { 'clangd',  '--query-driver=/usr/bin/arm-none-eabi-gcc', '--background-index', '--clang-tidy', '--log=verbose'},
  root_markers = { 'compile_commands.json', 'compile_flags.txt' },
  filetypes = { 'c', 'cpp' },
}

