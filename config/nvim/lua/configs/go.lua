require('go').setup({
  go = 'go', -- go command, can be go[default] or go1.18beta1
  goimport = 'gopls', -- goimport command, can be gopls[default] or goimport
  fillstruct = 'gopls', -- can be nil (use fillstruct, slower) and gopls
  gofmt = 'gofumpt', --gofmt cmd,
  max_line_len = 120, -- max line length in goline format
  tag_transform = false, -- can be transform option("snakecase", "camelcase", etc) check gomodifytags for details and more options
  test_template = '', -- g:go_nvim_tests_template  check gotests for details
  test_template_dir = '', -- default to nil if not set; g:go_nvim_tests_template_dir  check gotests for details
  comment_placeholder = '', -- comment_placeholder your cool placeholder e.g. ﳑ       
  icons = { breakpoint = '🧘', currentpos = '🏃' }, -- setup to `false` to disable icons setup
  verbose = false, -- output loginf in messages
  lsp_cfg = true, -- true: use non-default gopls setup specified in go/lsp.lua
  -- false: do nothing
  -- if lsp_cfg is a table, merge table with with non-default gopls setup in go/lsp.lua, e.g.
  --   lsp_cfg = {settings={gopls={matcher='CaseInsensitive', ['local'] = 'your_local_module_path', gofumpt = true }}}
  lsp_gofumpt = true, -- true: set default gofmt in gopls format to gofumpt
  lsp_on_attach = nil, -- nil: use on_attach function defined in go/lsp.lua,
  --      when lsp_cfg is true
  -- if lsp_on_attach is a function: use this function as on_attach function for gopls
  lsp_keymaps = false, -- set to false to disable gopls/lsp keymap
  lsp_codelens = true, -- set to false to disable codelens, true by default, you can use a function
  -- function(bufnr)
  --    vim.api.nvim_buf_set_keymap(bufnr, "n", "<space>F", "<cmd>lua vim.lsp.buf.formatting()<CR>", {noremap=true, silent=true})
  -- end
  -- to setup a table of codelens
  lsp_diag_hdlr = true, -- hook lsp diag handler
  -- virtual text setup
  lsp_diag_virtual_text = { space = 0, prefix = '' },
  lsp_diag_signs = true,
  lsp_diag_update_in_insert = false,
  lsp_document_formatting = true,
  -- set to true: use gopls to format
  -- false if you want to use other formatter tool(e.g. efm, nulls)
  gopls_remote_auto = false, -- add -remote=auto to gopls
  test_runner = 'go', -- richgo, go test, richgo, dlv, ginkgo
})
