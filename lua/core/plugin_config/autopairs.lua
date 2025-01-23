

-- Настройка плагина nvim-autopairs
require("nvim-autopairs").setup({
    disable_filetype = { "TelescopePrompt", "vim" }, -- Отключение автозакрытия скобок в указанных типах файлов
    check_ts = true, -- Использовать TreeSitter для продвинутой проверки скобок
    ts_config = {
        lua = { "string" }, -- не добавлять пару скобок в строках Lua

    },
    fast_wrap = {
        map = '<M-e>', -- Клавиша для быстрого оборачивания
        chars = { '{', '[', '(', '"', "'", "<" }, -- Символы для оборачивания
        pattern = string.gsub([[ [%'%"%)%>%]%)%}%,] ]], '%s+', ''),
        offset = 0, -- Смещение
        end_key = '$',
        keys = 'qwertyuiopzxcvbnmasdfghjkl',
        check_comma = true,
        highlight = 'Search',
        highlight_grey = 'Comment'
    },
})

-- Дополнительные настройки плагина можно добавить здесь

