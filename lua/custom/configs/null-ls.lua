local augroup = vim.api.nvim_create_augroup("LspFormatting", {})
local null_ls = require("null-ls")

local b = null_ls.builtins

local opts = {
  sources = {
    -- webdev stuff
    b.formatting.deno_fmt,
    b.formatting.prettier.with { filetypes = { "html", "markdown", "css" } },
    -- Lua
    b.formatting.stylua,
    -- cpp
    b.formatting.clang_format,
    -- python
    b.formatting.black,
    b.diagnostics.mypy,
    b.diagnostics.ruff,
  },
  on_attach = function(client, bufnr)
    if client.supports_method("textDocument/formatting") then
      vim.api.nvim_clear_autocmds({
        group = augroup,
        buffer = bufnr,
      })
      vim.api.nvim_create_autocmd("BufWritePre", {
        group = augroup,
        buffer = bufnr,
        callback = function()
          vim.lsp.buf.format({ bufnr = bufnr})
        end,
      })
    end
  end
}

return opts
