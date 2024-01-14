return {
    {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v3.x'
    },
    { 'williamboman/mason.nvim', config = true },
    {
        'hrsh7th/nvim-cmp',
        dependencies = {
            { 'L3MON4D3/LuaSnip' },
        },
        config = function()
            local cmp = require('cmp')
            local lsp = require('lsp-zero')
            local cmp_format = lsp.cmp_format()
            local cmp_mappings = {
                ['<CR>'] = cmp.mapping.confirm({ select = true }),
                ['<C-Space>'] = cmp.mapping.complete(),
            }

            cmp.setup({
                formatting = cmp_format,
                mapping = cmp.mapping.preset.insert(cmp_mappings),
            })
        end
    },
    {
        'neovim/nvim-lspconfig',
        dependencies = {
            { 'hrsh7th/cmp-nvim-lsp' },
            { 'williamboman/mason-lspconfig.nvim' },
        },
        config = function()
            local lsp = require('lsp-zero')
            lsp.extend_lspconfig()

            lsp.preset('recommended')

            lsp.set_preferences({
                suggest_lsp_servers = true,
                sign_icons = {
                    error = 'E',
                    warn = 'W',
                    hint = 'H',
                    info = 'I'
                }
            })

            lsp.on_attach(function(_, bufnr)
                local nmap = function(keys, func, desc)
                    if desc then
                        desc = 'LSP: ' .. desc
                    end
                    vim.keymap.set('n', keys, func, { buffer = bufnr, desc = desc })
                end

                nmap('<leader>rn', vim.lsp.buf.rename, '[R]e[n]ame')
                nmap('<leader>vca', vim.lsp.buf.code_action, '[V]iew [C]ode [A]ction')

                nmap('gd', require('telescope.builtin').lsp_definitions, '[G]oto [D]efinition')
                nmap('gr', require('telescope.builtin').lsp_references, '[G]oto [R]eferences')
                nmap('gI', require('telescope.builtin').lsp_implementations, '[G]oto [I]mplementation')
                nmap('<leader>D', require('telescope.builtin').lsp_type_definitions, 'Type [D]efinition')
                nmap('<leader>ds', require('telescope.builtin').lsp_document_symbols, '[D]ocument [S]ymbols')
                nmap('<leader>ws', require('telescope.builtin').lsp_dynamic_workspace_symbols, '[W]orkspace [S]ymbols')

                nmap('K', vim.lsp.buf.hover, 'Hover Documentation')
                nmap('<leader>K', vim.lsp.buf.signature_help, 'Signature Documentation')
            end)

            lsp.setup({})

            vim.diagnostic.config({
                virtual_text = true
            })

            require('mason-lspconfig').setup({
                ensure_installed = {
                    'tsserver',
                    'eslint',
                    'lua_ls',
                    'jsonls',
                    'pyright',
                },
                handlers = {
                    function(server_name)
                        require("lspconfig")[server_name].setup {}
                    end,
                    ["lua_ls"] = function()
                        require("lspconfig").lua_ls.setup {
                            settings = {
                                Lua = {
                                    diagnostics = {
                                        globals = { "vim" }
                                    }
                                }
                            }
                        }
                    end,
                }
            })
        end
    },
}
