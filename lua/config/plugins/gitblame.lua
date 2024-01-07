return {
    'f-person/git-blame.nvim',
    config = function()
        local git_blame = require('gitblame')
        git_blame.setup({
            date_format = '%r',
        })
        vim.g.gitblame_display_virtual_text = 0

        vim.keymap.set('n', '<leader>gf', vim.cmd.GitBlameOpenFileURL)
        vim.keymap.set('n', '<leader>gb', vim.cmd.GitBlameOpenCommitURL)

        local default_message_template = '<author> (<date>)'
        local descriptive_message_template = '<author> (<date>) <summary>'
        vim.g.gitblame_message_template = default_message_template
        vim.cmd.GitBlameEnable()

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
    end
}
