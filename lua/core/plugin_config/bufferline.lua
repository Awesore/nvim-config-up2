 require("bufferline").setup {
        options = {
          numbers = "ordinal", -- Нумерация вкладок
          diagnostics = "nvim_lsp", -- Показ диагностики LSP
          separator_style = "slant", -- Стиль разделителей
          show_close_icon = true, -- Скрыть кнопку закрытия
          show_buffer_close_icons = true, -- Скрыть кнопку закрытия буферов
          always_show_bufferline = true, -- Всегда показывать панель буферов
        }
      }

 -- Вперед - назад по вкладкам.
vim.keymap.set('n', '<Tab>n', '<Cmd>BufferLineCycleNext<CR>', {})
vim.keymap.set('n', '<Tab>p', '<Cmd>BufferLineCyclePrev<CR>', {})

 -- Закриття вкладки.
 vim.keymap.set('n', '<leader>x', '<Cmd>bdelete<CR>', {})

