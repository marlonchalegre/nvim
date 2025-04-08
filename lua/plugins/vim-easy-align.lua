return {
  "junegunn/vim-easy-align",
  enabled = true,
  keys = {
    { "={", "vi{<C-v>$:EasyAlign\\ g/^\\S/<CR>", { buffer = true, silent = true } },
    { "=[", "vi[<C-v>$:EasyAlign\\ g/^\\S/<CR>", { buffer = true, silent = true } },
    { "=(", "vi(<C-v>$:EasyAlign\\ g/^\\S/<CR>", { buffer = true, silent = true } },
  },
  init = function()
    vim.keymap.set("x", "<leader>ea", "<Plug>(EasyAlign)", {})
    return vim.keymap.set("n", "<leader>ea", "<Plug>(EasyAlign)", {})
  end,
}
