local cmd = vim.cmd
local autocmd =  vim.api.nvim_create_autocmd
local user_command = vim.api.nvim_create_user_command

-- tree-sitter, lsp and dap plugins
local ts_list = (
  "html css scss javascript typescript tsx " ..
  "python java lua " ..
  "bash fish json yaml toml markdown rst sql " ..
  "v make http proto dockerfile"
)
local ls_list = (
  "html cssls cssmodules_ls angularls denols tsserver " ..
  "pyright sumneko_lua " ..
  "bashls jsonls yamlls taplo marksman sqls " ..
  "vls dockerls"
)
local dp_list = (
  "python js"
)

local function on_win_enter()
  local ft = vim.bo.filetype
  if(ft == "toggleterm") then
    cmd("startinsert | 1")
  elseif(ft == "neo-tree") then
    cmd("stopinsert | 1")
  end
end

return function ()
  autocmd("WinEnter", { pattern = { "*" }, callback = on_win_enter })

  user_command("MyInstall", function()
    cmd("TSInstall! " .. ts_list)
    cmd("LspInstall " .. ls_list)
    cmd("DapInstall " .. dp_list)
  end, {})

  local dap_python_ok, dap_python = pcall(require, "dap-python")
  if dap_python_ok then
    dap_python.setup('python')
  end
end
