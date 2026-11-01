
local M = {}

local function get_project_root()
  local cwd = vim.fn.getcwd()

  local git_root = vim.fn.systemlist(
    "git -C " .. vim.fn.shellescape(cwd) .. " rev-parse --show-toplevel"
  )

  if vim.v.shell_error == 0 and git_root[1] then
    return vim.fs.normalize(git_root[1])
  end

  return cwd
end

local function get_search_dirs()
  local root = get_project_root()
  local config_file = root .. "/.nvim/telescope.lua"

  print("========== Telescope Debug ==========")
  print("Project root: " .. root)
  print("Config file: " .. config_file)

  if vim.fn.filereadable(config_file) ~= 1 then
    print("Config NOT FOUND! Using project root.")
    print("=====================================")
    return { root }
  end

  print("Config FOUND!")

  local ok, dirs = pcall(dofile, config_file)

  if not ok or type(dirs) ~= "table" then
    print("ERROR loading config: " .. tostring(dirs))
    print("=====================================")
    return { root }
  end

  local result = {}

  for _, dir in ipairs(dirs) do
    local full_path = vim.fs.normalize(root .. "/" .. dir)

    if vim.fn.isdirectory(full_path) == 1 then
      table.insert(result, full_path)
      print("Search directory: " .. full_path)
    else
      print("WARNING: Directory not found: " .. full_path)
    end
  end

  if #result == 0 then
    print("No valid directories. Using project root.")
    result = { root }
  end

  print("Total search directories: " .. #result)
  print("=====================================")

  return result
end

function M.find_files()
  local dirs = get_search_dirs()

  require("telescope.builtin").find_files({
    search_dirs = dirs,
    find_command = {
      "fd",
      "--type", "f",
      "--color", "never",
    },
    hidden = false,
  })
end

function M.live_grep()
  local dirs = get_search_dirs()

  require("telescope.builtin").live_grep({
    search_dirs = dirs,
  })
end

return M

