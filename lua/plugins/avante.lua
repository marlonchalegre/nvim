return {
  "yetone/avante.nvim",
  event = "VeryLazy",
  version = false, -- Never set this value to "*"! Never!
  opts = {
    -- add any opts here
    -- for example
    provider = "internal",
    vendors = {
      internal = {
        __inherited_from = "openai",
        endpoint = "http://127.0.0.1:8899/v1",
        model = "gpt-4.1", -- your desired model (or use gpt-4o, etc.)
      },
    },
  },
  -- if you want to build from source then do `make BUILD_FROM_SOURCE=true`
  build = "make",
  -- build = "powershell -ExecutionPolicy Bypass -File Build.ps1 -BuildFromSource false" -- for windows
  dependencies = {
    "nvim-treesitter/nvim-treesitter",
    "stevearc/dressing.nvim",
    "nvim-lua/plenary.nvim",
    "MunifTanjim/nui.nvim",
    --- The below dependencies are optional,
    "ibhagwan/fzf-lua", -- for file_selector provider fzf
    "nvim-tree/nvim-web-devicons", -- or echasnovski/mini.icons
    {
      -- support for image pasting
      "HakonHarnes/img-clip.nvim",
      event = "VeryLazy",
      init = function()
        vim.api.nvim_create_autocmd("User", {
          pattern = "ToggleMyPrompt",
          callback = function()
            require("avante.config").override({ system_prompt = "MY CUSTOM SYSTEM PROMPT" })
          end,
        })

        vim.keymap.set("n", "<leader>am", function()
          vim.api.nvim_exec_autocmds("User", { pattern = "ToggleMyPrompt" })
        end, { desc = "avante: toggle my prompt" })
      end,
      opts = {
        -- recommended settings
        default = {
          embed_image_as_base64 = false,
          prompt_for_file_name = false,
          drag_and_drop = {
            insert_mode = true,
          },
          -- required for Windows users
          use_absolute_path = true,
        },
      },
    },
  },
}
