return {
  "ravitemer/mcphub.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  build = "npm install -g mcp-hub@latest", --"bundled_build.lua", -- Bundles `mcp-hub` binary along with the neovim plugin
  config = function()
    require("mcphub").setup(
      --{
      --  use_bundled_binary = true, -- Use local `mcp-hub` binary
      --}
    )
  end,
}
