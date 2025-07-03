return {
  {
    "OXY2DEV/markview.nvim",
    enabled = true,
    lazy = false,
    priority = 49, -- something related to nvim-treesitter
    ft = { "markdown", "norg", "rmd", "org", "vimwiki", "Avante" },
    opts = {
      preview = {
        filetypes = { "markdown", "norg", "rmd", "org", "vimwiki", "Avante" },
        ignore_buftypes = {},
        max_length = 99999,
      },
    },
  },
}
