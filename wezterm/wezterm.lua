local wezterm = require("wezterm")

return {

  font_size = 36,
  font = wezterm.font("UbuntuMono Nerd Font"),

  initial_cols = 83,
  initial_rows = 25,

  window_padding = {
   left = 2,
   right = 0,
   top = 0,
   bottom = 0,
  },

  term = "xterm-254color",
  animation_fps = 60,
  max_fps = 60,
  window_decorations = "RESIZE",

  enable_tab_bar = false,
  hide_tab_bar_if_only_one_tab = true,
  color_scheme = 'Gruvbox Material (Gogh)'
}