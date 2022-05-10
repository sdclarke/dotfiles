local map = function(mode, shortcut, command)
  vim.api.nvim_set_keymap(mode, shortcut, command, { noremap = true, silent = true })
end

local nmap = function(shortcut, command)
  map('n', shortcut, command)
end

local imap = function(shortcut, command)
  map('i', shortcut, command)
end

local vmap = function(shortcut, command)
  map('v', shortcut, command)
end

nmap('<C-h>', '<C-w>h')
nmap('<C-j>', '<C-w>j')
nmap('<C-k>', '<C-w>k')
nmap('<C-l>', '<C-w>l')
nmap('<cr>', 'i<cr><Esc>')
nmap('<cr><cr>', 'o<Esc>')
nmap('<F5>', [[:let _s=@/ <Bar> :%s/\s\+$//e <Bar> :let @/=_s <Bar> :nohl <Bar> :unlet _s <CR>]])
nmap('<leader>ff', '<cmd>lua require("configs/telescope").project_files()<cr>')
nmap('<leader>fg', '<cmd>Telescope live_grep<cr>')
nmap('<leader>fb', '<cmd>Telescope buffers<cr>')
nmap('<leader>ft', '<cmd>Telescope treesitter<cr>')
nmap('<leader>gd', '<cmd>Telescope lsp_definitions<cr>')
nmap('<leader>fr', '<cmd>Telescope builtin<cr>')
nmap('<leader>rn', '<cmd>lua vim.lsp.buf.rename()<CR>')
nmap('<leader>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>')
vmap('p', '"_dP')
vmap('>', '>gv')
vmap('<', '<gv')
