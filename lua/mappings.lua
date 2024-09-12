require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- Disable defaults
map("n", "<C-u>", "<Nop>", { desc = "Disable Move up by half a page" })
map("n", "<C-d>", "<Nop>", { desc = "Disable Move down by half a page" })
map("n", "<C-b>", "<Nop>", { desc = "Disable Move up by a page" })
map("n", "<C-f>", "<Nop>", { desc = "Disable Move down by a page" })
map("n", "q", "<Nop>", { desc = "Disable Start macro recording" })


--#region

-- quit
-- map("n", "<c-q>", ":qa!<CR>", { desc = "quit" })
-- map("i", "<c-q>", "<Esc>:qa!<CR>")


map({ "n", "i" }, "<c-q>", "<cmd> qa! <cr>", { desc = "quit" })
-- map("i", "<c-q>", "<Esc>:qa!<CR>")


--#endregion



-- Custom mappings
map("n", "<c-n>", "<cmd>enew<cr>", { desc = "New File" })
map("i", "<c-n>", "<cmd>enew<cr>", { desc = "New File" })

map("n", "<C-d>", "yyp", { desc = "Duplicate line" })
map("i", "<C-d>", "<esc>yypi", { desc = "Duplicate line" })

map("n", "<C-f>", "<cmd>Telescope current_buffer_fuzzy_find<cr>", { desc = "Search for pattern" })
map("i", "<C-f>", "<cmd>Telescope current_buffer_fuzzy_find<cr>", { desc = "Search for pattern" })

map("n", "<C-z>", "u", { desc = "Undo" })
map("i", "<C-z>", "<esc>ui", { desc = "Undo" })

map("v", "<C-c>", "y", { desc = "Copy selection" })
map("n", "<C-c>", "yy", { desc = "Copy line" })

map("n", "<C-x>", "yydd", { desc = "Cut line" })
map("i", "<C-x>", "<esc>yyddi", { desc = "Cut line" })

map("n", "<C-v>", "p", { desc = "Paste" })
map("i", "<C-v>", "<esc>pi", { desc = "Paste" })

map("n", "<C-e>", "<cmd>NvimTreeToggle toggle<cr>", { desc = "Toggle Explorer" })
map("n", "<C-p>", "<cmd>Telescope oldfiles<cr>", { desc = "Telescope oldfiles" })

map("n", "<C-a>", "ggVG", { desc = "Select all" })

map("i", "<C-a>", "<esc>^i", { desc = "Beginning of line" })
map("i", "<C-e>", "<esc>$i<Right>", { desc = "Ending of line" })

map("n", "..", "<cmd>SessionManager! load_current_dir_session<cr>", { desc = "󰱃 Load current directory session" })
map("n", ".c", "<cmd>Neoconf<cr>", { desc = " Neoconf" })
map("n", ".o", "<cmd>AerialToggle<cr>", { desc = " Symbols outline" })
map("n", ".s", "<cmd>Spectre<cr>", { desc = "󰍉 Spectre" })
map("n", ".j", "<cmd>Telescope aerial<cr>", { desc = " Jump to symbol" })
map("n", ".f", "<cmd>Telescope find_files<cr>", { desc = " Search files" })
map("n", ".b", "<cmd>Telescope builtin<cr>", { desc = " Telescope builtin" })

-- map("n", "<leader>tg", function() utils.toggle_term_cmd("gitui") end, { desc = "ToggleTerm gitui" })

-- Smart splits
map("n", "<M-Up>", function() require("smart-splits").move_cursor_up() end, { desc = "Move to above split" })
map("n", "<M-Down>", function() require("smart-splits").move_cursor_down() end, { desc = "Move to below split" })
map("n", "<M-Left>", function() require("smart-splits").move_cursor_left() end, { desc = "Move to left split" })
map("n", "<M-Right>", function() require("smart-splits").move_cursor_right() end, { desc = "Move to right split" })

-- DAP
map("n", "<leader>dl", "<cmd>DapLoadLaunchJSON<cr>", { desc = "Load launch.json" })

-- Bufdelete
map("n", "<leader>x", "<leader>c", { remap = true })
map("n", "<leader>X", "<leader>C", { remap = true })

-- Neo-tree focus
map("n", "<C-o>", "<leader>o", { remap = true })

-- Force write and quit
map("i", "<C-s>", "<cmd>w<cr>", { desc = "Force write" })
map("i", "<C-q>", "<cmd>q!<cr>", { desc = "Force quit" })
