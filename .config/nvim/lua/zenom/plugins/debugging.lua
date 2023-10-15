return {
	'mfussenegger/nvim-dap',
	dependencies = {
		'suketa/nvim-dap-ruby',
		'rcarriga/nvim-dap-ui',
		'jay-babu/mason-nvim-dap.nvim',
	},
	config = function()
		local dap = require('dap')
		local dapui = require('dapui')
		require('mason-nvim-dap').setup({
			automatic_setup = true,
			handlers = {},
			ensure_installed = {}, -- debuggers for languages here
		})
		vim.keymap.set('n', '<leader>bc', dap.continue, { desc = 'Debug: Start/Continue' })
		vim.keymap.set('n', '<leader>bi', dap.step_into, { desc = 'Debug: Step Into' })
		vim.keymap.set('n', '<leader>bo', dap.step_over, { desc = 'Debug: Step Over' })
		vim.keymap.set('n', '<leader>bs', dap.step_out, { desc = 'Debug: Step Out' })
		vim.keymap.set('n', '<leader>b', dap.toggle_breakpoint, { desc = 'Debug: Toggle Breakpoint' })

		dapui.setup({
			-- Set icons to characters that are more likely to work in every terminal.
			--    Feel free to remove or use ones that you like more! :)
			--    Don't feel like these are good choices.
			icons = { expanded = '▾', collapsed = '▸', current_frame = '*' },
			controls = {
				icons = {
					pause = '⏸',
					play = '▶',
					step_into = '⏎',
					step_over = '⏭',
					step_out = '⏮',
					step_back = 'b',
					run_last = '▶▶',
					terminate = '⏹',
					disconnect = '⏏',
				},
			},
		})

		vim.keymap.set('n', '<leader>bu', dapui.toggle, { desc = 'Debug: See last session result.' })

		dap.listeners.after.event_initialized['dapui_config'] = dapui.open
		dap.listeners.before.event_terminated['dapui_config'] = dapui.close
		dap.listeners.before.event_exited['dapui_config'] = dapui.close

		-- setup ruby dap
		require('dap-ruby').setup()
	end,
}
