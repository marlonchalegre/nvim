return {
  "yetone/avante.nvim",
  event = "VeryLazy",
  version = false, -- Never set this value to "*"! Never!
  opts = {
    provider = "copilot",
    --cursor_applying_provider = "internal",
    behaviour = {
      enable_cursor_planning_mode = true, -- enable cursor planning mode!
    },
    openai = {
      hide_in_model_selector = true,
    },
    claude = {
      hide_in_model_selector = true,
    },
    aihubmix = {
      hide_in_model_selector = true,
    },
    ["aihubmix-claude"] = {
      hide_in_model_selector = true,
    },
    gemini = {
      hide_in_model_selector = true,
    },
    vertex = {
      hide_in_model_selector = true,
    },
    vertex_claude = {
      hide_in_model_selector = true,
    },
    cohere = {
      hide_in_model_selector = true,
    },
    bedrock = {
      hide_in_model_selector = true,
    },
    ["claude-haiku"] = {
      hide_in_model_selector = true,
    },
    ["claude-opus"] = {
      hide_in_model_selector = true,
    },
    ["openai-gpt-4o-mini"] = {
      hide_in_model_selector = true,
    },
    vendors = {
      internal = {
        __inherited_from = "openai",
        endpoint = "http://127.0.0.1:8899/v1",
        model = "gpt-4.1", -- your desired model (or use gpt-4o, etc.)
      },
      copilot_claude_3_7 = {
        __inherited_from = "copilot",
        model = "claude-3.7-sonnet",
      },
      copilot_claude_3_7_thinking = {
        __inherited_from = "copilot",
        model = "claude-3.7-sonnet-thought",
      },
      copilot_gemini_2_0_flash = {
        __inherited_from = "copilot",
        model = "gemini-2.0-flash-001",
      },
      copilot_gemini_2_5_pro = {
        __inherited_from = "copilot",
        model = "gemini-2.5-pro",
      },
      copilot_openai_o4_mini = {
        __inherited_from = "copilot",
        model = "o4-mini",
      },
      copilot_openai_4_1 = {
        __inherited_from = "copilot",
        model = "gpt-4.1",
      },
      copilot_openai_o3_mini = {
        __inherited_from = "copilot",
        model = "o3-mini",
      },
    },
  },
  -- if you want to build from source then do `make BUILD_FROM_SOURCE=true`
  build = "make",
  dependencies = {
    "nvim-treesitter/nvim-treesitter",
    "stevearc/dressing.nvim",
    "nvim-lua/plenary.nvim",
    "MunifTanjim/nui.nvim",
    --- The below dependencies are optional,
    "ibhagwan/fzf-lua", -- for file_selector provider fzf
    "nvim-tree/nvim-web-devicons", -- or echasnovski/mini.icons
    "zbirenbaum/copilot.lua", -- for providers='copilot'
    {
      -- support for image pasting
      "HakonHarnes/img-clip.nvim",
      event = "VeryLazy",
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
