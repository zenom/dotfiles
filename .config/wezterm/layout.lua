local wezterm = require 'wezterm'
local mux = wezterm.mux
local config = {}

wezterm.on('gui-startup', function(cmd)
  -- allow `wezterm start -- something` to affect what we spawn
  -- in our initial window
  local args = {}
  if cmd then
    args = cmd.args
  end

  -- This is the main tab for the editor
  local pulse_project_dir = '/Users/andy/Development/medaxion_site/'
  local editor_tab, pulse_pane, window = mux.spawn_window {
    workspace = 'pulse',
    cwd = pulse_project_dir,
    args = args,
  }
  local editor_pane = pulse_pane:split {
    direction = 'Top',
    size = 0.95,
    cwd = pulse_project_dir,
  }
  editor_tab:set_title 'Editor'

  local server_tab, pane, window = window:spawn_tab {}
  server_tab:set_title 'Rails S/C'

  local log_tab, pane, window = window:spawn_tab {}
  log_tab:set_title 'Logs'

  local jobs_tab, pane, window = window:spawn_tab {}
  jobs_tab:set_title 'Worker'

  editor_tab:activate() -- activate main tab

  -- CIS Workspace --
  local cis_project_dir = '/Users/andy/Development/central_information_service//'

  local cis_editor_tab, cis_pane, window = mux.spawn_window {
    workspace = 'cis',
    cwd = cis_project_dir,
    args = args,
  }
  local cis_editor_pane = cis_pane:split {
    direction = 'Top',
    size = 0.95,
    cwd = cis_project_dir,
  }
  cis_editor_tab:set_title 'Editor'

  local cis_server_tab, pane, window = window:spawn_tab {}
  cis_server_tab:set_title 'Rails S/C'

  local cis_log_tab, pane, window = window:spawn_tab {}
  cis_log_tab:set_title 'Logs'

  local cis_jobs_tab, pane, window = window:spawn_tab {}
  cis_jobs_tab:set_title 'Worker'

  -- A workspace for interacting with a local machine that
  -- runs some docker containners for home automation
  -- local cis_project_dir = "~/Development/central_information_service/"
  -- local tab, cis_pane, window = mux.spawn_window {
  --   workspace = 'cis',
  --   cwd = cis_project_dir,
  --   args = args,
  -- }

  -- We want to startup in the coding workspace
  mux.set_active_workspace 'pulse'
end)

return config
