local capabilities = require("cmp_nvim_lsp").default_capabilities()

vim.lsp.config("clangd", {
  cmd = {
    "clangd",
    "--background-index",
    "--clang-tidy",
    "--completion-style=detailed",
    "--header-insertion=iwyu",
  },

  capabilities = capabilities,

  filetypes = {
    "c",
    "cpp",
    "objc",
    "objcpp",
    "cuda",
  },
})

vim.lsp.enable("clangd")
