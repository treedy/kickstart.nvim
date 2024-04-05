return {
  {
    "CopilotC-Nvim/CopilotChat.nvim",
    version = "v2.4.2",
    dependencies = {
      { "nvim-telescope/telescope.nvim" }, -- Use telescope for help actions
      { "nvim-lua/plenary.nvim" },
    },
    opts = {
      show_help = "yes", -- Show help text for CopilotChatInPlace, default: yes
      debug = false,     -- Enable or disable debug mode, the log file will be in ~/.local/state/nvim/CopilotChat.nvim.log
      prompts = {
        Review = "/COPILOT_EXPLAIN Review the code and provide concise suggestions.",
        Refactor = "/COPILOT_REFACTOR Refactor the code to improve clarity and readability.",
      },
    },
    event = "VeryLazy",
    keys = {
      {
        "<leader>pa",
        function()
          local actions = require("CopilotChat.actions")
          require("CopilotChat.integrations.telescope").pick(actions.help_actions())
        end,
        desc = "CopilotChat - Help actions",
      },
      {
        "<leader>pe",
        "<cmd>CopilotChatExplain<cr>",
        mode = { "n", "v" },
        desc = "CopilotChat - Explain code"
      },
      {
        "<leader>pT",
        "<cmd>CopilotChatTests<cr>",
        mode = { "n", "v" },
        desc = "CopilotChat - Generate tests"
      },
      {
        "<leader>pt",
        "<cmd>CopilotChatToggle<cr>",
        desc = "CopilotChat - Toggle",
      },
      {
        "<leader>pM",
        "<cmd>CopilotChatCommit<cr>",
        desc = "CopilotChat - Generate commit message for all changes",
      },
      {
        "<leader>pm",
        "<cmd>CopilotChatCommitStaged<cr>",
        desc = "CopilotChat - Generate commit message for staged changes",
      },
    },
  },
}
