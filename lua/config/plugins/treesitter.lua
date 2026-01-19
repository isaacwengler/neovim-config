return {
    'nvim-treesitter/nvim-treesitter',
    lazy = false,
    build = ':TSUpdate',
    config = function()
        require('nvim-treesitter').setup {}
        require('nvim-treesitter').install { 'lua', 'typescript', 'javascript', 'tsx', 'json', 'c_sharp', 'sql' }

        vim.api.nvim_create_autocmd('FileType', {
            pattern = '*',
            callback = function()
                pcall(vim.treesitter.start)
            end,
        })
    end
}
