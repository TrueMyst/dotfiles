-- Pluggins
lvim.plugins = {
  { "sainnhe/gruvbox-material" },
  { "norcalli/nvim-colorizer.lua",
    config = function()
      require("colorizer").setup({ "css", "scss", "html", "javascript" }, {
          RGB = true, RRGGBB = true, RRGGBBAA = true, rgb_fn = true, hsl_fn = true,css = true, css_fn = true }) end
  },
}

-- Colorscheme
lvim.colorscheme = "gruvbox-material"
vim.g.gruvbox_material_background = "hard"
vim.g.gruvbox_material_better_performance = 1

-- Keybindings
lvim.keys.normal_mode["<M-x>"] = ":BufferKill<CR>"
lvim.keys.normal_mode["<M-.>"] = ":BufferLineCycleNext<CR>"
lvim.keys.normal_mode["<M-,>"] = ":BufferLineCyclePrev<CR>"
