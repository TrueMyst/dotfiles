-- Plugginsr
lvim.plugins = {
    {"sainnhe/gruvbox-material"}, {"ellisonleao/gruvbox.nvim"},
    {"TrueMyst/ovate.nvim"}, {"cocopon/colorswatch.vim"}, {"rktjmp/lush.nvim"},
    {"cocopon/inspecthi.vim"}, {
        "norcalli/nvim-colorizer.lua",
        config = function()
            require("colorizer").setup({
                "css", "scss", "html", "javascript", "lua"
            }, {
                RGB = true,
                RRGGBB = true,
                RRGGBBAA = true,
                rgb_fn = true,
                hsl_fn = true,
                css = true,
                css_fn = true
            })
        end
    }
}

-- Colorscheme
lvim.colorscheme = "gruvbox-material"
vim.g.gruvbox_material_background = "hard"
vim.g.gruvbox_material_better_performance = 1

-- Keybindings
lvim.keys.normal_mode["<M-x>"] = ":BufferKill<CR>"
lvim.keys.normal_mode["<M-.>"] = ":BufferLineCycleNext<CR>"
lvim.keys.normal_mode["<M-,>"] = ":BufferLineCyclePrev<CR>"

-- Formatter
local formatters = require("lvim.lsp.null-ls.formatters")

formatters.setup {
    {name = "black"}, {name = "clang_format"}, {name = "lua_format"}
}

lvim.format_on_save.enabled = true
