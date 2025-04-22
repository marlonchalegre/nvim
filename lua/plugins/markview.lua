return {
  {
    "OXY2DEV/markview.nvim",
    enabled = true,
    lazy = false,
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
