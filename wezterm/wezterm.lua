local wezterm = require("wezterm")

return {

  font_size = 41, --so people helping you can see the screen
  font = wezterm.font("UbuntuMono Nerd Font"),
  color_scheme = 'Gruvbox Material (Gogh)',

  --window_decorations = "RESIZE",
  --enable_tab_bar = false,
  --hide_tab_bar_if_only_one_tab = true,

  initial_cols = 74, --deliberately small to promote good coding
  initial_rows = 22,

  window_padding = {
   left = 40,
   right = 0,
   top = 0,
   bottom = 2,
  },

  term = "xterm-254color",
  animation_fps = 60,
  max_fps = 60

}