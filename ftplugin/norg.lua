-- Setup syntax highlighting within @code blocks in Norg files.
vim.api.nvim_create_augroup('norg_cwquerylang', { clear = true })

vim.api.nvim_create_autocmd({ 'BufEnter', 'BufWinEnter' }, {
  group = 'norg_cwquerylang',
  pattern = '*.norg',
  callback = function()
    vim.cmd('syntax include @cwl syntax/CWQueryLang.vim')
    vim.cmd('syntax region cwlCode start="@code CWQueryLang" end="@end" contains=@cwl')
  end,
})
