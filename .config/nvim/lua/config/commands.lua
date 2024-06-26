local autocmd = vim.api.nvim_create_autocmd   -- Create autocommand

autocmd('Filetype', {
  pattern = { 'xml', 'html', 'xhtml', 'css', 'scss', 'javascript', 'javascriptreact', 'typescript', 'typescriptreact',
    'yaml', 'lua', 'json', 'solidity'
  },
  command = 'setlocal shiftwidth=2 tabstop=2'
})

autocmd('Filetype', {
  pattern = { 'python', 'rust', 'go', 'scala', 'java', 'haskell', 'c++', 'perl', 'php' },
  command = 'setlocal shiftwidth=4 tabstop=4 expandtab'
})

vim.cmd(':set winhighlight=Normal:CmpNormal')
