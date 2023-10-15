return {
	'glepnir/dashboard-nvim',
	event = 'VimEnter',
	-- opts = function()
	--   local logo = [[WHAT]]
	-- end,
	config = function()
		local logo = [[
	 ▄███████▄     ▄████████ ███▄▄▄▄    ▄██████▄    ▄▄▄▄███▄▄▄▄   
	██▀     ▄██   ███    ███ ███▀▀▀██▄ ███    ███ ▄██▀▀▀███▀▀▀██▄ 
	      ▄███▀   ███    █▀  ███   ███ ███    ███ ███   ███   ███ 
	 ▀█▀▄███▀▄▄  ▄███▄▄▄     ███   ███ ███    ███ ███   ███   ███ 
	  ▄███▀   ▀ ▀▀███▀▀▀     ███   ███ ███    ███ ███   ███   ███ 
	▄███▀         ███    █▄  ███   ███ ███    ███ ███   ███   ███ 
	███▄     ▄█   ███    ███ ███   ███ ███    ███ ███   ███   ███ 
	 ▀████████▀   ██████████  ▀█   █▀   ▀██████▀   ▀█   ███   █▀  
    ]]

		logo = string.rep('\n', 8) .. logo .. '\n\n'
		require('dashboard').setup({
			-- theme = 'doom',
			config = {
				header = vim.split(logo, '\n'),
				project = { enable = false },
				shortcut = {
					{
						desc = '“Someone\'s sitting in the shade today because someone planted a tree a long time ago.” —Warren Buffet',
						group = 'DashboardShortCut',
					},
				},
				footer = function()
					return {}
				end,
			},
		})
	end,
	dependencies = { { 'nvim-tree/nvim-web-devicons' } },
}
