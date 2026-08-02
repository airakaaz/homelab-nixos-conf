local capabilities = require("lsp.capabilities")

local servers = {
  "nixd",
  "basedpyright",
  "ruff",
  "lua_ls",
  "clangd",
}

for _, server in ipairs(servers) do
  local ok, config = pcall(require, "lsp.servers." .. server)
  if not ok then
    config = {}
  end

  config.capabilities = capabilities

  vim.lsp.config(server, config)
end

vim.lsp.enable(servers)
