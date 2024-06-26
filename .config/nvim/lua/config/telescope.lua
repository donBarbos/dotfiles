require('telescope').setup({
  defaults = {
    prompt_prefix = ' 🔍 ',
    layout_strategy = 'horizontal',
    sorting_strategy = 'ascending',
    layout_config = {
      prompt_position = 'top',
    },
    file_ignore_patterns = {
      ".git/",
      ".local/",
    },
  },
  pickers = {
    find_files = {
      hidden = true,
    }
  },
})
