return {
  "VonHeikemen/lsp-zero.nvim",
  dependencies = {
    {"williamboman/mason.nvim"},
    {"williamboman/mason-lspconfig.nvim"},
    {"neovim/nvim-lspconfig"},
    {"hrsh7th/cmp-nvim-lsp"},
    {"hrsh7th/nvim-cmp"},
    {"L3MON4D3/LuaSnip"},
  },
  config = function()
    local lsp_zero = require('lsp-zero')
    
    lsp_zero.on_attatch(function(client,bufnr)
        -- do things here sometime
      lsp_zero.default_keymaps({buffer=bufnr})
    end)

    require('mason').setup({})
    require('mason-lspconfig').setup({
      ensure_installed = {"clangd"},
      handlers = {
        lsp_zero.default.setup,
      }
    })
  end,
}
