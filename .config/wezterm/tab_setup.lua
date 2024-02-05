local wezterm = require("wezterm")

function tab_title(tab_info)
	local title = tab_info.tab_title
	if title and #title > 0 then
		return title
	end
	return tab_info.active_pane.title
end

wezterm.on("format-tab-title", function(tab, tabs, panes, config, hover, max_width)
	local mux_window = wezterm.mux.get_window(tab.window_id)
	local mux_tab = mux_window:active_tab()
	local mux_tab_cols = mux_tab:get_size().cols

	-- Calculate active/inactive tab cols
	-- In general, active tab cols > inactive tab cols
	local tab_count = #tabs
	local inactive_tab_cols = math.floor(mux_tab_cols / tab_count)
	local active_tab_cols = mux_tab_cols - (tab_count - 1) * inactive_tab_cols

	local title = tab_title(tab)
	title = " " .. title .. " "
	local title_cols = wezterm.column_width(title)
	local icon = " ⦿"
	-- local icon_cols = wezterm.column_width(icon)

	-- Divide into 3 areas and center the title
	if tab.is_active then
		-- local rest_cols = math.max(active_tab_cols - title_cols, 0)
		local right_cols = 1 --math.ceil(rest_cols / 2)
		local left_cols = 3 -- rest_cols -- eight_cols
		return {
			-- left
			{ Foreground = { Color = "Purple" } },
      -- { Background = { Color = "Gray" } },
			{ Text = wezterm.pad_right(icon, left_cols) },
			-- center
			{ Foreground = { Color = "#FFF" } },
			{ Attribute = { Italic = true } },
			{ Text = title },
			-- right
			{ Text = wezterm.pad_right("", right_cols) },
		}
	else
		-- local rest_cols = math.max(inactive_tab_cols - title_cols, 0)
		local right_cols = 1 -- math.ceil(rest_cols / 2)
		local left_cols = 1 -- rest_cols - right_cols
		return {
			-- left
			{ Text = wezterm.pad_right("", left_cols) },
			-- center
			{ Foreground = { Color = "#FFF" } },
			{ Attribute = { Italic = true } },
			{ Text = title },
			-- right
			{ Text = wezterm.pad_right("", right_cols) },
		}
	end
end)

