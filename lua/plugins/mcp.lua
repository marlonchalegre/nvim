return {
  "ravitemer/mcphub.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  build = "npm install -g mcp-hub", -- Installs `mcp-hub` node binary globally
  config = function()
    require("mcphub").setup()
  end,
}
