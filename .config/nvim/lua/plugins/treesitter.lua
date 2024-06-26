return {
  {
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
    config = function()
      require('config.treesitter')
    end
  },
  { 'ray-x/go.nvim',                              ft = { 'go' } }, -- Optional, for enhanced Go support
}
