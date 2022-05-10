local augroup = vim.api.nvim_create_augroup('LspFormatting', {})
require('null-ls').setup({
  sources = {
    require('null-ls').builtins.formatting.stylua,
    require('null-ls').builtins.code_actions.gitsigns,
    require('null-ls').builtins.code_actions.gitrebase,
    require('null-ls').builtins.code_actions.refactoring,
    require('null-ls').builtins.diagnostics.golangci_lint,
    require('null-ls').builtins.diagnostics.yamllint,
    require('null-ls').builtins.formatting.prettier,
  },

  -- you can reuse a shared lspconfig on_attach callback here
  on_attach = function(client, bufnr)
    vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
    vim.api.nvim_create_autocmd('BufWritePre', {
      group = augroup,
      buffer = bufnr,
      callback = function()
        -- on 0.8, you should use vim.lsp.buf.format({ bufnr = bufnr }) instead
        vim.lsp.buf.formatting_sync()
      end,
    })
  end,
})
