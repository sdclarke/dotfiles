require('plugins')
require('configs/lsp')
require('configs/treesitter')
require('configs/lualine')
require('configs/gitsigns')
require('configs/rust-tools')
require('configs/telescope')
require('configs/go')
require('options')
require('mappings')
vim.cmd[[autocmd BufNewFile,BufRead *.go setlocal noexpandtab tabstop=2 shiftwidth=2]]
vim.api.nvim_exec([[ autocmd BufWritePre * lua vim.lsp.buf.formatting_sync(nil,500) ]], false)
-- Run gofmt + goimport on save
--vim.api.nvim_exec([[ autocmd BufWritePre *.go :silent! lua require('go.format').goimport() ]], false)
