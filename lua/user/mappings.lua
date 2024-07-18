return function(maps)
  local utils = require "astronvim.utils"

  -- disable defaults
  maps.n["<C-u>"] = "<Nop>" -- Move up by half a page
  maps.n["<C-d>"] = "<Nop>" -- Move down by half a page
  maps.n["<C-b>"] = "<Nop>" -- Move up by a page
  maps.n["<C-f>"] = "<Nop>" -- Move down by a page
  maps.n["q"]     = "<Nop>" -- Start macro recording

  maps.n["<c-n>"] = { "<cmd>enew<cr>", desc = "New File" }
  maps.i["<c-n>"] = maps.n["<c-n>"]

  maps.n["<C-d>"] = { "yyp", desc = "Duplicate line" }
  maps.i["<C-d>"] = { "<esc>yypi", desc = "Duplicate line" }

  maps.n["<C-f>"] = { "<cmd>Telescope current_buffer_fuzzy_find<cr>", desc = "Search for pattern" }
  maps.i["<C-f>"] = maps.n["<C-f>"]

  maps.n["<C-z>"] = { "u", desc = "Undo" }
  maps.i["<C-z>"] = { "<esc>ui", desc = "Undo" }

  maps.v["<C-c>"] = { "y", desc = "Copy selection" }
  maps.n["<C-c>"] = { "yy", desc = "Copy line" }

  maps.n["<C-x>"] = { "yydd", desc = "Cut line" }
  maps.i["<C-x>"] = { "<esc>yyddi", desc = "Cut line" }

  maps.n["<C-v>"] = { "p", desc = "Paste" }
  maps.i["<C-v>"] = { "<esc>pi", desc = "Paste" }

  maps.n["<C-e>"] = { "<cmd>Neotree toggle<cr>", desc = "Toggle Explorer" }
  maps.n["<C-p>"] = { "<cmd>Telescope oldfiles<cr>", desc = "Telescope oldfiles" }

  maps.n["<C-a>"] = { "ggVG", desc = "Select all" }

  maps.i["<C-a>"] = { "<esc>^i", desc = "Beginning of line" }
  maps.i["<C-e>"] = { "<esc>$i<Right>", desc = "Ending of line" }

  maps.n[".."] = { "<cmd>SessionManager! load_current_dir_session<cr>", desc = "󰱃 Load current directory session" }
  maps.n[".c"] = { "<cmd>Neoconf<cr>", desc = " Neoconf" }
  maps.n[".o"] = { "<cmd>AerialToggle<cr>", desc = " Symbols outline" }
  maps.n[".s"] = { "<cmd>Spectre<cr>", desc = "󰍉 Spectre" }
  maps.n[".j"] = { "<cmd>Telescope aerial<cr>", desc = " Jump to symbol" }
  maps.n[".f"] = { "<cmd>Telescope find_files<cr>", desc = " Search files" }
  maps.n[".b"] = { "<cmd>Telescope builtin<cr>", desc = " Telescope builtin" }

  maps.n["<leader>tg"] = { function() utils.toggle_term_cmd "gitui" end, desc = "ToggleTerm gitui" }

  -- smart splits
  maps.n["<C-h>"] = false
  maps.n["<C-j>"] = false
  maps.n["<C-k>"] = false
  maps.n["<C-l>"] = false
  -- --
  maps.n["<C-Up>"]    = false
  maps.n["<C-Down>"]  = false
  maps.n["<C-Left>"]  = false
  maps.n["<C-Right>"] = false
  -- --
  maps.n["<M-Up>"]    = { function() require("smart-splits").move_cursor_up() end, desc = "Move to above split" }
  maps.n["<M-Down>"]  = { function() require("smart-splits").move_cursor_down() end, desc = "Move to below split" }
  maps.n["<M-Left>"]  = { function() require("smart-splits").move_cursor_left() end, desc = "Move to left split" }
  maps.n["<M-Right>"] = { function() require("smart-splits").move_cursor_right() end, desc = "Move to right split" }

  -- dap
  maps.n["<leader>dl"] = { "<cmd>DapLoadLaunchJSON<cr>", desc = "Load launch.json" }

  -- Bufdelete
  maps.n["<leader>x"] = maps.n["<leader>c"]
  maps.n["<leader>X"] = maps.n["<leader>C"]

  -- neo-tree focus
  maps.n["<C-o>"] = maps.n["<leader>o"]

  -- by default is set only for normal mode
  maps.i["<C-s>"] = maps.n["<C-s>"] -- Force write
  maps.i["<C-q>"] = maps.n["<C-q>"] -- Force quit

  return maps
end
