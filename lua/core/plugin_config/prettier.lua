-- Настройки Prettier в Neovim
require('prettier').setup({
    -- Глобальные настройки Prettier
    ['*'] = {
        tabWidth = 2,
        useTabs = false,
        semi = true,
        singleQuote = true,
        trailingComma = "es5",
        printWidth = 100
    },
  ['typescript'] = {
        parser = 'typescript'
    },
    ['typescriptreact'] = {
        parser = 'typescript'
    }
})

-- Можно добавить маппинг для быстрого форматирования
-- (НЕ ПРАЦЮЄ)
---------
vim.api.nvim_set_keymap('n', '<C-`>', ':Prettier<CR>', { noremap = true, silent = true })

vim.api.nvim_set_keymap('i', '<C-A-f>', '<Esc>:Prettier<CR>a', { normap = true, silent = true })
---------

vim.cmd([[
  augroup AutoPrettier
    autocmd!
    autocmd BufWritePre * Prettier
  augroup END
]])
