-- This file needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/ui/blob/v2.5/lua/nvconfig.lua

---@type ChadrcConfig
local M = {}


local header = {
  "##    ## ########  #######  ##     ## #### ##     ##",
  "###   ## ##       ##     ## ##     ##  ##  ###   ###",
  "####  ## ##       ##     ## ##     ##  ##  #### ####",
  "## ## ## ######   ##     ## ##     ##  ##  ## ### ##",
  "##  #### ##       ##     ##  ##   ##   ##  ##     ##",
  "##   ### ##       ##     ##   ## ##    ##  ##     ##",
  "##    ## ########  #######     ###    #### ##     ##",
}

M.nvdash = {
    load_on_startup = true,
  header = header
}

-- M.plugins0 = {
  -- {
  --   "goolord/alpha-nvim",
  --   opts = function(_, opts)
  --     opts.section.header.val = header -- customize the dashboard
  --     return opts
  --   end,
  -- },

  -- {
  --   "Shatur/neovim-session-manager",
  --   opts = {
  --     autosave_last_session = true
  --   }
  -- },

--   {
--     "folke/which-key.nvim",
--     opts = {
--       window = {
--         border = "double", -- none, single, double, shadow
--       },
--       popup_mappings = {
--         scroll_down = "<Down>", -- binding to scroll down inside the popup
--         scroll_up = "<Up>",     -- binding to scroll up inside the popup
--       }
--     }
--   },

--   {
--     "nvim-neo-tree/neo-tree.nvim",
--     opts = function(_, opts)
--       opts.default_component_configs.indent.padding = 1
--       opts.default_component_configs.indent.indent_size = 2
--       return opts
--     end,
--   },

--   {
--     "nvim-pack/nvim-spectre",
--     cmd = "Spectre",
--     opts = function()
--       local prefix = "<leader>"
--       return {
--         mapping = {
--           run_current_replace = { map = prefix .. "C" },
--         },
--       }
--     end,
--   },

--   {
--     "folke/neoconf.nvim",
--     cmd = {
--       "Neoconf",
--     },
--     opts = function(_, opts)
--       require("neoconf").setup({
--         import = {
--           vscode = true, -- local .vscode/settings.json
--         },
--       })
--       return opts
--     end,
--   },

--   { "wuelnerdotexe/vim-astro" },

--   { "mfussenegger/nvim-dap-python" },
-- }

M.options = {
  g = {
    autoformat_enabled = false,
  }
}


M.ui = {
  statusline = {
      theme = "default", -- default/vscode/vscode_colored/minimal
      -- default/round/block/arrow separators work only for default statusline theme
      -- round and block will work for minimal theme only
      separator_style = "block",
  },

   nvdash = {
       load_on_startup = true,
         -- header = header
   },
}

M.dap = require "config-dap"


return M
