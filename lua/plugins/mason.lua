return {
  "mason-org/mason.nvim",
  opts = function(_, opts)
    opts.ensure_installed = opts.ensure_installed or {}
    -- Add Clojure LSP server

    vim.list_extend(opts.ensure_installed, { "clojure-lsp", "cljfmt", "clj-kondo" })
  end,
}
