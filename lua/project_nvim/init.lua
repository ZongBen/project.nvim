local config = require("project_nvim.config")
local history = require("project_nvim.utils.history")
local project = require("project_nvim.project")
local finder = require("project_nvim.utils.finder")
local M = {}

M.setup = config.setup
M.get_recent_projects = history.get_recent_projects
M.get_last_project = project.get_last_project
M.find_projects = finder.find_projects

return M
