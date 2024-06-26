local colors = {
  black        = '#282828',
  white        = '#ebdbb2',
  red          = '#fb4934',
  green        = '#5fd700',
  blue         = '#5fafff',
  pink         = '#d585d5',
  gray         = '#a89984',
  darkgray     = '#282828',
  lightgray    = '#585858',
  inactivegray = '#939393',
}

local gruvbox_theme = {
  normal = {
    a = { bg = colors.green, fg = colors.black, gui = 'bold' },
    b = { bg = colors.lightgray, fg = colors.white },
    c = { bg = colors.darkgray, fg = colors.inactivegray }
  },
  insert = {
    a = { bg = colors.blue, fg = colors.black, gui = 'bold' },
    b = { bg = colors.lightgray, fg = colors.white },
    c = { bg = colors.darkgray, fg = colors.inactivegray }
  },
  visual = {
    a = { bg = colors.pink, fg = colors.black, gui = 'bold' },
    b = { bg = colors.lightgray, fg = colors.white },
    c = { bg = colors.darkgray, fg = colors.inactivegray }
  },
  replace = {
    a = { bg = colors.red, fg = colors.black, gui = 'bold' },
    b = { bg = colors.lightgray, fg = colors.white },
    c = { bg = colors.darkgray, fg = colors.inactivegray }
  },
  command = {
    a = { bg = colors.green, fg = colors.black, gui = 'bold' },
    b = { bg = colors.lightgray, fg = colors.white },
    c = { bg = colors.darkgray, fg = colors.inactivegray }
  },
  inactive = {
    a = { bg = colors.darkgray, fg = colors.gray, gui = 'bold' },
    b = { bg = colors.lightgray, fg = colors.white },
    c = { bg = colors.darkgray, fg = colors.inactivegray }
  }
}

return {
  { 'morhetz/gruvbox' },
  {
    'nvim-lualine/lualine.nvim',
    dependencies = {
      'nvim-tree/nvim-web-devicons', 'linrongbin16/lsp-progress.nvim'
    },
    opts = {
      options = {
        icons_enabled = true,
        theme = gruvbox_theme,
        component_separators = '|',
        section_separators = { left = '', right = '' }
      }
    },
  }
}
