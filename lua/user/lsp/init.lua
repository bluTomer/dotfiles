local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
  return
end


require "user.lsp.configs"
-- require "user.lsp.lsp-installer"
require("user.lsp.handlers").setup()
require "user.lsp.null-ls"
vim.cmd("let g:node_host_prog = '/Users/tomer_blushinsky/.nvm/versions/node/v16/bin'")
