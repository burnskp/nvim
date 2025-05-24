return {
  {
    "ravitemer/mcphub.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    build = "npm install -g mcp-hub@latest",
    opts = {
      extensions = {
        avante = {
          make_slash_commands = true, -- make /slash commands from MCP server prompts
        }
      }
    }
  },
  {
    "yetone/avante.nvim",
    event = "VeryLazy",
    version = false,
    opts = {
      provider = "copilot",
      copilot = {
        model = "gpt-4.1"
      },
      behaviour = {
        auto_suggestions = false,
      },
      system_prompt = function()
        local hub = require("mcphub").get_hub_instance()
        return hub:get_active_servers_prompt()
      end,
      custom_tools = function()
        return {
          require("mcphub.extensions.avante").mcp_tool(),
        }
      end,
    },
    build = "make",
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
      "stevearc/dressing.nvim",
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
      "nvim-tree/nvim-web-devicons",
      "zbirenbaum/copilot.lua",
      {
        "MeanderingProgrammer/render-markdown.nvim",
        opts = {
          file_types = { "markdown", "Avante" },
        },
        ft = { "markdown", "Avante" },
      },
    },
    keys = {
      {
        "<leader>ab",
        function()
          require("avante.api").ask({
            question = "Fix the bugs inside the following codes, if any",
          })
        end,
        desc = "avante: fix bugs",
        mode = { "n", "v" },
      },
      {
        "<leader>ac",
        function()
          require("avante.api").ask({
            question = "Complete the following codes written in " .. vim.bo.filetype,
          })
        end,
        desc = "avante: complete code",
        mode = { "n", "v" },
      },
      {
        "<leader>ad",
        function()
          require("avante.api").ask({ question = "Add docstring to the following code" })
        end,
        desc = "Docstring(ask)",
        mode = { "n", "v" }
      },
      {
        "<leader>aD",
        "<Plug>(AvanteToggleDebug)",
        { desc = "avante: toggle debug" },
        mode = { "n", "v" }
      },
      {
        "<leader>ag",
        function()
          require("avante.api").ask({
            question = "Correct the text to standard English, but keep any code blocks inside intact.",
          })
        end,
        desc = "avante: fix grammer",
        mode = { "n", "v" },
      },
      {
        "<leader>an",
        "<cmd>AvanteChatNew<cr>",
        desc = "avante: ask new",
        mode = { "n" },
      },
      {
        "<leader>ao",
        function()
          require("avante.api").ask({
            question = "Optimize the following code",
          })
        end,
        desc = "avante: optimize code",
        mode = { "n", "v" },
      },
      {
        "<leader>ar",
        "<cmd>AvanteClear<cr>",
        desc = "avante: clear",
        mode = { "n" },
      },
      {
        "<leader>au",
        function()
          require("avante.api").ask({ question = "Implement tests for the following code" })
        end,
        desc = "avante: add tests",
        mode = { "n" },
      },
      {
        "<leader>ax",
        function()
          require("avante.api").ask({ question = "Explain the following code" })
        end,
        desc = "avante: explain code",
        mode = { "n", "v" },
      },
    },
  },
}
