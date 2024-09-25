require("catppuccin").setup({
  flavour = "macchiato",
  --transparent_background = true,
  styles = { -- Handles the styles of general hi groups (see `:h highlight-args`):
    comments = { "italic" }, -- Change the style of comments
  },
  custom_highlights = {

      Normal = { bg = "#262626" }, -- Замените #000000 на желаемый цвет
  },
});


 vim.o.termguicolors = true
--vim.o.background = "dark"
vim.cmd[[colorscheme catppuccin]]

--vim.cmd[[colorscheme gruvbox]]
