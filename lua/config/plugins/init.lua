return {
    {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.4',
        dependencies = { 'nvim-lua/plenary.nvim' }
    },
    'Mofiqul/vscode.nvim',
    {
        'nvim-treesitter/nvim-treesitter', build = ':TSUpdate'
    },
    "mbbill/undotree",
    { 'williamboman/mason.nvim' },
    { 'williamboman/mason-lspconfig.nvim' },
    { 'VonHeikemen/lsp-zero.nvim',        branch = 'v3.x' },
    { 'neovim/nvim-lspconfig' },
    { 'hrsh7th/cmp-nvim-lsp' },
    { 'hrsh7th/nvim-cmp' },
    { 'L3MON4D3/LuaSnip' },
    'Raimondi/delimitMate',
    'nvim-tree/nvim-web-devicons',
    'nvim-tree/nvim-tree.lua',
    'lewis6991/gitsigns.nvim',
    'sindrets/diffview.nvim',
    {
        'nvim-lualine/lualine.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons', opt = true }
    },
    "tpope/vim-fugitive",
    "tpope/vim-rhubarb",
    "f-person/git-blame.nvim",
    'mfussenegger/nvim-dap',
    'mfussenegger/nvim-dap-python'
}