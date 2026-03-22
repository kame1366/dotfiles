local wezterm = require("wezterm")
local config = wezterm.config_builder()
local act = wezterm.action

-- size
config.initial_cols = 120
config.initial_rows = 28

-- surface
config.font = wezterm.font "Hack Nerd Font"
config.font_size = 11.5
config.color_scheme = 'tokyonight'
config.window_background_opacity = 0.85
config.window_padding = {
  left = 0,
  right = 0,
  top = 0,
  bottom = 0,
}

-- Default shell
-- config.default_domain = 'WSL:FedoraLinux-42'
config.default_prog = { 'pwsh.exe' }

-- keymap
config.leader = { key = "w", mods = "CTRL", timeout_milliseconds = 1000 }
config.keys = {
  -- newtab: Ctrl + t, c
  { key = "c", mods = "LEADER", action = act.SpawnTab("CurrentPaneDomain") },
  -- nexttab: Ctrl + t, n
  { key = "n", mods = "LEADER", action = act.ActivateTabRelative(1) },

  -- split to right: Ctrl + t, r
  { key = "r", mods = "LEADER", action = act.SplitHorizontal({ domain = "CurrentPaneDomain" }) },
  -- split to down: Ctrl + t, d
  { key = "d", mods = "LEADER", action = act.SplitVertical({ domain = "CurrentPaneDomain" }) },

  -- close pane
  { key = "x", mods = "LEADER", action = act.CloseCurrentPane { confirm = true } },

  -- move: Ctrl + t + {h,j,k,l}
  { key = "h", mods = "LEADER", action = act.ActivatePaneDirection("Left") },
  { key = "j", mods = "LEADER", action = act.ActivatePaneDirection("Down") },
  { key = "k", mods = "LEADER", action = act.ActivatePaneDirection("Up") },
  { key = "l", mods = "LEADER", action = act.ActivatePaneDirection("Right") },
}


--tabbar
config.window_decorations = "RESIZE"
config.show_tabs_in_tab_bar = true
config.hide_tab_bar_if_only_one_tab = true

config.window_frame = {
  inactive_titlebar_bg = "none",
  active_titlebar_bg = "none",
}

config.window_background_gradient = {
  colors = { "#000000" }
}

config.colors = {
  tab_bar = {
    inactive_tab_edge = "none",
  },
}


-- タブの形をカスタマイズ
-- タブの左側の装飾
local SOLID_LEFT_ARROW = wezterm.nerdfonts.ple_lower_right_triangle
-- タブの右側の装飾
local SOLID_RIGHT_ARROW = wezterm.nerdfonts.ple_upper_left_triangle

wezterm.on("format-tab-title", function(tab, tabs, panes, config, hover, max_width)
  local background = "#5c6d74"
  local foreground = "#FFFFFF"
  local edge_background = "none"
  if tab.is_active then
    background = "#ae8b2d"
    foreground = "#FFFFFF"
  end
  local edge_foreground = background
  local title = "   " .. wezterm.truncate_right(tab.active_pane.title, max_width - 1) .. "   "
  return {
    { Background = { Color = edge_background } },
    { Foreground = { Color = edge_foreground } },
    { Text = SOLID_LEFT_ARROW },
    { Background = { Color = background } },
    { Foreground = { Color = foreground } },
    { Text = title },
    { Background = { Color = edge_background } },
    { Foreground = { Color = edge_foreground } },
    { Text = SOLID_RIGHT_ARROW },
  }
end)

return config
