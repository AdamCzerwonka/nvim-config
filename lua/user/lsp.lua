local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())

require("lspconfig").rust_analyzer.setup{}
require("lspconfig").gopls.setup{
    capabilities = capabilities,
    on_attach = function()
        vim.keymap.set("n","K",vim.lsp.buf.hover, {buffer=0})
        vim.keymap.set("n","gd",vim.lsp.buf.definition, {buffer=0})
        vim.keymap.set("n","gt",vim.lsp.buf.type_definition, {buffer=0})
        vim.keymap.set("n","gi",vim.lsp.buf.implementation, {buffer=0})
        vim.keymap.set("n","<leader>dj",vim.diagnostic.goto_next, {buffer=0})
        vim.keymap.set("n","<leader>dk",vim.diagnostic.goto_prev, {buffer=0})
        vim.keymap.set("n","<leader>dl","<cmd>Telescope diagnostics<cr>", {buffer=0})
        vim.keymap.set("n","<leader>r",vim.lsp.buf.rename, {buffer=0})
        vim.keymap.set("n","<leader>ca",vim.lsp.buf.code_action, {buffer=0})
    end,
}
require("lspconfig").html.setup{}
require("lspconfig").ccls.setup{}
require("lspconfig").dockerls.setup{}
require("lspconfig").sqls.setup{
    settings = {
        sqls = {
            connections = {
                {
                    driver = 'postgresql',
                    dataSourceName = 'host=127.0.0.1 port=5432 user=postrgres password=example dbname=parking-service sslmode=disable'
                }
            }
        }
    }
}

