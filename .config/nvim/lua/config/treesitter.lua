require 'nvim-treesitter.configs'.setup {
  ensure_installed = { "python", "go", "lua", "rust", "vim", "vimdoc", "html", "css", "prisma", "sql", "java", "c", "typescript", "tsx", "javascript", "commonlisp" },

  auto_install = true,

  highlight = {
    enable = true,
    disable = {},
  },
}
