local wezterm = require("wezterm")
local mux = wezterm.mux

local function detect_shell()
  if wezterm.target_triple == "x86_64-pc-windows-msvc" then
    -- Path to Git Bash on Windows
    return {
      "C:\\Program Files\\Git\\bin\\bash.exe",
      "--login",
      "-i",
    }
  else
    -- Default to bash for all other systems
    return {"/bin/bash", "--login"}
  end
end

return {
  window_close_confirmation = 'NeverPrompt',
  default_prog = detect_shell(),

  color_scheme = 'Gruvbox Material (Gogh)',
  font = wezterm.font("Ubuntu Mono"),
  --font_size = 41,
  --initial_cols = 74,
  --initial_rows = 22,

  wezterm.on('gui-startup', function(cmd)
    local tab, pane, window = mux.spawn_window(cmd or {})
    window:gui_window():set_position(0, 130)
end),

  window_padding = {
   left = 40,
   right = 0,
   top = 0,
   bottom = 2,
  },

  term = "xterm-254color",
  animation_fps = 60,
  max_fps = 60

  --window_decorations = "RESIZE",
  --enable_tab_bar = false,
  --hide_tab_bar_if_only_one_tab = true,
}





