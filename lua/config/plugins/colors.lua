return {
    'Mofiqul/vscode.nvim',
    opts = {
        transparent = true,
        italic_comments = false,
        color_overrides = {
            vscLineNumber = '#FFFFFF',
        },
    },
    config = function(_, opts) 
        require('vscode').setup(opts)
        require('vscode').load()
    end
}
