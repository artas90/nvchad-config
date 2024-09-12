return {
    {
        "folke/which-key.nvim",
        opts = {
          window = {
            border = "double", -- none, single, double, shadow
          },
          popup_mappings = {
            scroll_down = "<Down>", -- binding to scroll down inside the popup
            scroll_up = "<Up>",     -- binding to scroll up inside the popup
          }
        }
      },


      {
        "Shatur/neovim-session-manager",
        opts = {
          autosave_last_session = true
        }
      },

      {
        "nvim-neo-tree/neo-tree.nvim",
        opts = function(_, opts)
          opts.default_component_configs.indent.padding = 1
          opts.default_component_configs.indent.indent_size = 2
          return opts
        end,
      },

      {
        "nvim-pack/nvim-spectre",
        cmd = "Spectre",
        opts = function()
          local prefix = "<leader>"
          return {
            mapping = {
              run_current_replace = { map = prefix .. "C" },
            },
          }
        end,
      },

      {
        "folke/neoconf.nvim",
        cmd = {
          "Neoconf",
        },
        opts = function(_, opts)
          require("neoconf").setup({
            import = {
              vscode = true, -- local .vscode/settings.json
            },
          })
          return opts
        end,
      },

      { "wuelnerdotexe/vim-astro" },

      { "mfussenegger/nvim-dap-python" },

  -- {
  --   "stevearc/conform.nvim",
  --   -- event = 'BufWritePre', -- uncomment for format on save
  --   config = function()
  --     require "configs.conform"
  --   end,
  -- },

  -- These are some examples, uncomment them if you want to see them work!
  -- {
  --   "neovim/nvim-lspconfig",
  --   config = function()
  --     require("nvchad.configs.lspconfig").defaults()
  --     require "configs.lspconfig"
  --   end,
  -- },
  --
  -- {
  -- 	"williamboman/mason.nvim",
  -- 	opts = {
  -- 		ensure_installed = {
  -- 			"lua-language-server", "stylua",
  -- 			"html-lsp", "css-lsp" , "prettier"
  -- 		},
  -- 	},
  -- },
  --
  -- {
  -- 	"nvim-treesitter/nvim-treesitter",
  -- 	opts = {
  -- 		ensure_installed = {
  -- 			"vim", "lua", "vimdoc",
  --      "html", "css"
  -- 		},
  -- 	},
  -- },
}
