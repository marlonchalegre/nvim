return {
  -- Add Clojure & related to treesitter
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      if type(opts.ensure_installed) == "table" then
        vim.list_extend(opts.ensure_installed, { "clojure" })
      end
    end,
  },

  -- Add Clojure LSP server
  {
    "williamboman/mason.nvim",
    opts = function(_, opts)
      opts.ensure_installed = opts.ensure_installed or {}
      vim.list_extend(opts.ensure_installed, { "clojure-lsp", "cljfmt", "clj-kondo" })
    end,
  },

  -- Extend auto completion
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      "PaterJason/cmp-conjure",
    },
    opts = function(_, opts)
      local cmp = require("cmp")
      opts.sources = cmp.config.sources(vim.list_extend(opts.sources, {
        { name = "conjure" },
      }))
    end,
  },

  -- Add s-exp mappings
  { "echasnovski/mini.surround" },
  { "julienvincent/nvim-paredit", opts = {} },
  { "gpanders/nvim-parinfer" },

  -- Colorize the output of the log buffer
  {
    "m00qek/baleia.nvim",
    version = "*",
    config = function()
      vim.g.conjure_baleia = require("baleia").setup({ line_starts_at = 3 })

      local augroup = vim.api.nvim_create_augroup("ConjureBaleia", { clear = true })

      vim.api.nvim_create_autocmd({ "BufEnter" }, {
        pattern = "conjure-log-*",
        group = augroup,
        callback = function()
          vim.keymap.set(
            { "n", "v" },
            "[c",
            "<CMD>call search('^; -\\+$', 'bw')<CR>",
            { silent = true, buffer = true, desc = "Jumps to the begining of previous evaluation output." }
          )
          vim.keymap.set(
            { "n", "v" },
            "]c",
            "<CMD>call search('^; -\\+$', 'w')<CR>",
            { silent = true, buffer = true, desc = "Jumps to the begining of next evaluation output." }
          )
        end,
      })

      vim.api.nvim_create_user_command("BaleiaColorize", function()
        vim.g.conjure_baleia.once(vim.api.nvim_get_current_buf())
      end, { bang = true })

      vim.api.nvim_create_user_command("BaleiaLogs", vim.g.conjure_baleia.logger.show, { bang = true })
    end,
  },

  -- Use Clojure REPL
  {
    "Olical/conjure",
    ft = { "clojure", "fennel" },
    config = function(_, _)
      require("conjure.main").main()
      require("conjure.mapping")["on-filetype"]()
    end,
    init = function()
      -- print color codes if baleia.nvim is available
      local colorize = require("lazyvim.util").has("baleia.nvim")
      vim.g["conjure#log#strip_ansi_escape_sequences_line_limit"] = colorize and 1 or nil

      --    disable diagnostics in log buffer and colorize it
      vim.api.nvim_create_autocmd({ "BufWinEnter" }, {
        pattern = "conjure-log-*",
        callback = function()
          local buffer = vim.api.nvim_get_current_buf()
          vim.diagnostic.enable(false, { bufnr = buffer })
          if colorize and vim.g.conjure_baleia then
            vim.g.conjure_baleia.automatically(buffer)
          end
        end,
      })

      -- prefer LSP for jump-to-definition and symbol-doc, and use conjure
      -- alternatives with <localleader>K and <localleader>gd
      vim.g["conjure#mapping#doc_word"] = "K"
      vim.g["conjure#mapping#def_word"] = "gd"
      vim.g["conjure#client#clojure#nrepl#test#current_form_names"] = { "deftest", "defflow", "defspec", "describe" }
    end,
  },
}
