-------------------------------------------------------------------------------
-- LAZY - PLUGIN SPEC
-------------------------------------------------------------------------------
local NvimLint = {"mfussenegger/nvim-lint"}

NvimLint.event = {"BufReadPre", "BufNewFile"}

NvimLint.config = function()
    local lint = require("lint")

    lint.linters_by_ft = {python = {"pylint"}, lua = {"luacheck"}}

    local lint_augroup = vim.api.nvim_create_augroup("lint", {clear = true})

    vim.api.nvim_create_autocmd({"BufEnter", "BufWritePost", "InsertLeave"}, {
        group = lint_augroup,
        callback = function() lint.try_lint() end
    })

    vim.keymap.set("n", "<leader>tl", function() lint.try_lint() end,
                   {desc = "[T]rigger [l]inting for current file"})
end

return NvimLint
