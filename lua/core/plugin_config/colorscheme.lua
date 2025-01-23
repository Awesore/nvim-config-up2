require("catppuccin").setup({
  flavour = "macchiato",
  transparent_background = true, -- Включить прозрачный фон
  styles = {
    comments = { "italic" }, -- Изменить стиль комментариев
  },
  custom_highlights = {
      Normal = { bg = "NONE" }, -- Прозрачный фон
      NormalFloat = { bg = "NONE" }, -- Прозрачный фон для всплывающих окон
      TermNormal = { bg = "#0b3040", fg = "#ffffff" }, -- Цвет фона и текста для терминала
      CursorLine = {bg = "#719db0"}
  },
})

vim.o.termguicolors = true -- Включить поддержку 24-битных цветов
vim.cmd[[colorscheme catppuccin]]

