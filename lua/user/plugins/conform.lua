-------------------------------------------------------------------------------
-- LAZY - PLUGIN SPEC
-------------------------------------------------------------------------------
local Conform = { "stevearc/conform.nvim" }

Conform.event = { "BufReadPre", "BufNewFile" }

Conform.config = function(_, opts)
    opts.formatters_by_ft = {
        json = { "prettier" },
        yaml = { "prettier" },
        markdown = { "prettier" },
        c = { "clang-format" },
        lua = { "lua-format" },
        python = { "isort", "black" }
    }
    require("conform").setup(opts)

    -- keymap to format/[m]ake [p]retty, auto-save is disabled
    vim.keymap.set({ "n", "v" }, "<leader>mp", function()
        require("conform").format({
            lsp_fallback = false,
            async = false,
            timeout_ms = 1000
        })
    end, { desc = "[m]ake [p]retty (format file or range)" })
end

return Conform
