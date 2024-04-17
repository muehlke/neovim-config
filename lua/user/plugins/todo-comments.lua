-------------------------------------------------------------------------------
-- LAZY - PLUGIN SPEC
-------------------------------------------------------------------------------

local TodoComments = { "folke/todo-comments.nvim" }

TodoComments.dependencies = { "nvim-lua/plenary.nvim" }

TodoComments.init = function()
    vim.keymap.set("n", "<leader>tt", "<cmd>TodoTelescope<CR>", { desc = "Show ToDos" })
end

TodoComments.config = function(_, opts)
    require("todo-comments").setup(opts)
end

return TodoComments
