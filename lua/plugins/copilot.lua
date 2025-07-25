return {
  "zbirenbaum/copilot.lua",
  event = "InsertEnter",
  opts = {
    panel = {
      enabled = false,
    },
    suggestion = {
      enabled = false,
      -- auto_trigger = true,
      -- hide_during_completion = false,
      -- keymap = {
      --   accept = "<Tab>",
      -- },
    },
  },
  -- config = function()
  --   require("copilot").setup({
  --     suggestion = { enabled = false },
  --     panel = { enabled = false },
  --   })
  -- end,
}
