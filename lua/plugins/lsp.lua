return {
  "neovim/nvim-lspconfig",
  dependencies = {
    { "b0o/schemastore.nvim" },
  },
  config = function(opts)
    local servers = {
      "ansiblels",
      "dockerls",
      "golangci_lint_ls",
      "gopls",
      "jsonls",
      "lua_ls",
      "marksman",
      "pyright",
      "ruff",
      "rust_analyzer",
      "yamlls",
    }
    for _, item in ipairs(servers) do
      vim.lsp.enable(item)
    end
  end
}
