require("joaopedropsilva.vim_options")
require("joaopedropsilva.remap")
require("joaopedropsilva.lazy_vim")

vim.api.nvim_create_autocmd('TextYankPost', {
  group = vim.api.nvim_create_augroup('HighlightYank', {}),
  pattern = '*',
  callback = function()
    vim.highlight.on_yank({
        higroup = 'IncSearch',
        timeout = 40,
    })
  end,
})

