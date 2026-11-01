local map = vim.keymap.set

-- New buffer
map("n", "<leader>T", "<cmd>enew<CR>", {
  desc = "New empty buffer"
})

-- Buffer navigation
map("n", "<leader>l", "<cmd>bnext<CR>", {
  desc = "Next buffer"
})

map("n", "<leader>h", "<cmd>bprevious<CR>", {
  desc = "Previous buffer"
})

-- Close buffer
map("n", "<leader>bq", function()
  local current = vim.api.nvim_get_current_buf()
  vim.cmd("bprevious")
  vim.api.nvim_buf_delete(current, {})
end, {
  desc = "Close current buffer"
})

-- Telescope buffers
map("n", "<leader>b", "<cmd>Telescope buffers<CR>", {
  desc = "Find buffers"
})

-- Clipboard
map("v", "<leader>y", '"+y', {
  desc = "Copy to system clipboard"
})

map("n", "<leader>y", '"+yy', {
  desc = "Copy line to system clipboard"
})

map("n", "<leader>p", '"+p', {
  desc = "Paste from system clipboard"
})

-- Tab navigation
for i = 1, 9 do
  map("n", "<leader>" .. i, i .. "gt", {
    desc = "Go to tab " .. i
  })
end

map("n", "<leader>0", "<cmd>tablast<CR>", {
  desc = "Go to last tab"
})

-- File explorer
map("n", "<leader>n", "<cmd>NvimTreeToggle<CR>", {
  desc = "Toggle file explorer"
})

-- Telescopeprompt project search
local project_search = require("config.project_search")
vim.keymap.set("n", "<leader>ff", project_search.find_files,
  { desc = "Find project files" })
vim.keymap.set("n", "<leader>fg", project_search.live_grep,
  { desc = "Search project text" })
map("n", "<leader>fr", "<cmd>Telescope oldfiles<CR>", {
  desc = "Recent files"
})

-- Clear search highlighting
map("n", "<Esc>", "<cmd>nohlsearch<CR>")

