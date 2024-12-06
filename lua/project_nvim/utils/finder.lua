local history = require("project_nvim.utils.history")
local job = require("plenary.job")
local M = {}

M.find_projects = function(cwd)
  job
    :new({
      command = "fd",
      args = { "-H", "-t", "d", "-g", ".git", "--absolute-path", "-x", "dirname" },
      cwd = cwd,
      on_exit = function(j, return_val)
        if return_val == 0 then
          for _, path in ipairs(j:result()) do
            if path ~= nil then
              table.insert(history.session_projects, path)
            end
          end
        end
      end,
    })
    :sync()
end

return M
