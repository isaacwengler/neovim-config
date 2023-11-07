local git_blame = require('gitblame')
git_blame.setup {
    date_format = '%r',
}
vim.g.gitblame_display_virtual_text = 0
vim.g.gitblame_use_blame_commit_file_urls = true

local default_message_template = '<author> (<date>)'
local descriptive_message_template = '<author> (<date>) <summary>'
vim.g.gitblame_message_template = default_message_template

require('lualine').setup {
    options = {
        icons_enabled = true,
        theme = 'codedark',
        component_separators = { left = '', right = '' },
        section_separators = { left = '', right = '' },
        disabled_filetypes = {
            statusline = {},
            winbar = {},
        },
        ignore_focus = {},
        always_divide_middle = true,
        globalstatus = false,
        refresh = {
            statusline = 1000,
            tabline = 1000,
            winbar = 1000,
        }
    },
    sections = {
        lualine_a = { 'mode' },
        lualine_b = { 'branch', 'diff', 'diagnostics' },
        lualine_c = { { 'filename', path = 1 } },
        lualine_x = { { git_blame.get_current_blame_text, cond = git_blame.is_blame_text_available } },
        lualine_y = { 'encoding', 'fileformat', 'filetype' },
        lualine_z = { 'location' }
    },
    inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = { 'filename' },
        lualine_x = { 'location' },
        lualine_y = {},
        lualine_z = {}
    },
    tabline = {},
    winbar = {},
    inactive_winbar = {},
    extensions = {}
}

vim.keymap.set('n', '<leader>gb', vim.cmd.GitBlameOpenFileURL)

local function toggleBlameMessage()
    vim.cmd.GitBlameDisable()
    if vim.g.gitblame_message_template == default_message_template then
        vim.g.gitblame_message_template = descriptive_message_template
    else
        vim.g.gitblame_message_template = default_message_template
    end
    vim.cmd.GitBlameEnable()
end

vim.keymap.set('n', '<leader>gm', toggleBlameMessage)
