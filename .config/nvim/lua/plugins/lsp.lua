return {
  'neovim/nvim-lspconfig',

  {
    'williamboman/mason.nvim',
    opts = {
      ensure_installed = {
        "lua-language-server",
        "stylua",
        "pyright",
        "rust-analyzer",
        "sqlfmt",
        "html-lsp",
        "css-lsp",
        "prettier",
        "eslint_d",
        "prettierd",
        "gopls",
        "js-debug-adapter",
        "typescript-language-server",
        "tailwindcss-language-server",
      },
    },
    config = function()
      require('mason').setup()
    end,
  },

  {
    'williamboman/mason-lspconfig.nvim',
    dependencies = {
      'mason.nvim'
    },
    config = function()
      local conf = require('mason-lspconfig')
      conf.setup()
      conf.setup_handlers({
        function(server_name)
          require('lspconfig')[server_name].setup({})
        end
      })
    end
  },
}
