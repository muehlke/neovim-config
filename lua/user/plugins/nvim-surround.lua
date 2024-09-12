-------------------------------------------------------------------------------
-- LAZY - PLUGIN SPEC
-------------------------------------------------------------------------------
local NvimSurround = {"kylechui/nvim-surround"}

NvimSurround.version = "*" -- Use for stability; omit to use `main` branch for the latest features

NvimSurround.event = "VeryLazy"

NvimSurround.config = function()
    require("nvim-surround").setup({
        -- Configuration here, or leave empty to use defaults
    })
end

return NvimSurround
