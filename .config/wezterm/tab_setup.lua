local wezterm = require("wezterm")

-- The filled in variant of the > symbol
local SOLID_RIGHT_ARROW = wezterm.nerdfonts.pl_left_hard_divider

function tab_title(tab_info)
	local title = tab_info.tab_title
	if title and #title > 0 then
		return title
	end
	return tab_info.active_pane.title
end

wezterm.on("format-tab-title", function(tab, tabs, panes, config, hover, max_width)
	local title = tab_title(tab)
	title = "  " .. title .. "  "

  if tab.is_active then
    return {
      { Background = { Color = '#363a4f' } },
      { Foreground = { Color = '#8aadf4' } },
      { Text = SOLID_RIGHT_ARROW },
      { Foreground = { Color = '#FFF' } },
      { Text = string.upper(title) }
    }
  else
    return {
      -- { Background = { Color = '#0b0022' } },
      -- { Foreground = { Color = 'Purple' } },
      -- { Text = SOLID_RIGHT_ARROW },
      -- { Foreground = { Color = '#FFF' } },
      { Text = string.upper(title) }
    }
  end

end)
