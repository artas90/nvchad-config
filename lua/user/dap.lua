local is_exec = function(path)
  return vim.fn.executable(path) == 1
end

return {
  configurations = {
    python = {
      {
        type = "python",
        request = "launch",
        name = "Python(user): Launch file",
        program = "${file}",
        pythonPath = function()
          local venv = os.getenv("VIRTUAL_ENV")
          if venv and is_exec(venv .. "/bin/python") then
            return venv .. "/bin/python"
          end

          local cwd = vim.fn.getcwd()

          if is_exec(cwd .. "/venv/bin/python") then
            return cwd .. "/venv/bin/python"
          end

          if is_exec(cwd .. "/.venv/bin/python") then
            return cwd .. "/.venv/bin/python"
          end

          if is_exec("/usr/local/bin/python") then
            return "/usr/local/bin/python"
          end

          return "/usr/bin/python"
        end
      }
    }
  }
}
