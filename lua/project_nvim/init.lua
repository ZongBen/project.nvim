local config = require("project_nvim.config")
local history = require("project_nvim.utils.history")
local project = require("project_nvim.project")
local M = {}

M.setup = config.setup
M.get_recent_projects = history.get_recent_projects
M.get_last_project = project.get_last_project

return M
