-------------------------------------------------------------------------------
-- LAZY - PLUGIN SPEC
-------------------------------------------------------------------------------

local NoneLs = { "nvimtools/none-ls.nvim" }

NoneLs.dependencies = {
    'VonHeikemen/lsp-zero.nvim',
    'Issafalcon/lsp-overloads.nvim'
}

NoneLs.opts = function()
    local null_ls = require("null-ls")

    return {
        sources = {
            null_ls.builtins.diagnostics.markdownlint,
            null_ls.builtins.formatting.markdownlint,
            null_ls.builtins.formatting.prettier.with({ filetypes = { "json" } })
        },
        on_attach = require('user.lsp_on_attach')
    }
end

NoneLs.config = function(_, opts)
    require("null-ls").setup(opts)
end

return NoneLs
