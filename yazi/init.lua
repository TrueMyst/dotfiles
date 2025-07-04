---------------------------------
--           Yatline           -- 
---------------------------------
local catppuccin_palette = {
    rosewater = "#f5e0dc",
    flamingo = "#f2cdcd",
    pink = "#f5c2e7",
    mauve = "#cba6f7",
    red = "#f38ba8",
    maroon = "#eba0ac",
    peach = "#fab387",
    yellow = "#f9e2af",
    green = "#a6e3a1",
    teal = "#94e2d5",
    sky = "#89dceb",
    sapphire = "#74c7ec",
    blue = "#89b4fa",
    lavender = "#b4befe",
    text = "#cdd6f4",
    subtext1 = "#bac2de",
    subtext0 = "#a6adc8",
    overlay2 = "#9399b2",
    overlay1 = "#7f849c",
    overlay0 = "#6c7086",
    surface2 = "#585b70",
    surface1 = "#45475a",
    surface0 = "#313244",
    base = "#1e1e2e",
    mantle = "#181825",
    crust = "#11111b"
}

require("yatline"):setup(
{
  -- Component Separator
  section_separator = { open = "", close = "" },
  part_separator = { open = "", close = "" },
  inverse_separator = { open = "", close = "" },

  -- Style for Components
  style_a = {
    fg = catppuccin_palette.mantle,
    bg_mode = {
      normal = catppuccin_palette.blue,
      select = catppuccin_palette.mauve,
      un_set = catppuccin_palette.red
    }
  },
  style_b = { bg = catppuccin_palette.surface0, fg = catppuccin_palette.text },
  style_c = { bg = catppuccin_palette.base, fg = catppuccin_palette.text },

  -- Style for Permissions
  permissions_t_fg = catppuccin_palette.green,
  permissions_r_fg = catppuccin_palette.yellow,
  permissions_w_fg = catppuccin_palette.red,
  permissions_x_fg = catppuccin_palette.sky,
  permissions_s_fg = catppuccin_palette.lavender,

  -- Style for Coloreds
  selected = { icon = "󰻭", fg = catppuccin_palette.yellow },
  copied = { icon = "", fg = catppuccin_palette.green },

  -- Style for Headerline
  header_line = {
    left = {
      section_a = {},
      section_b = {},
      section_c = {
        { type = "string", custom = false, name = "hovered_path" }
      }
    },
    right = {
      section_a = {
        { type = "line", custom = false, name = "tabs", params = {"left"} }
      },
      section_b = {},
      section_c = {}
    }
  },

  -- Style for Statusline
  status_line = {
    left = {
      section_a = {
        { type = "string", custom = false, name = "tab_mode" }
      },
      section_b = {
        { type = "string", custom = false, name = "hovered_size" }
      },
      section_c = {
        { type = "coloreds", custom = false, name = "count" }
      }
    },
    right = {
      section_a = {
        { type = "string", custom = false, name = "cursor_position" }
      },
      section_b = {
        { type = "string", custom = false, name = "cursor_percentage" }
      },
      section_c = {
        { type = "coloreds", custom = false, name = "permissions" }
      }
    }
  }
}
)

---------------------------------
--         Full Border         --
---------------------------------
require("full-border"):setup()
