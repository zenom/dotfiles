return {
	"mfussenegger/nvim-lint",
	config = function()
		require("lint").linters_by_ft = {
			eruby = { "erb_lint" },
			ruby = { "rubocop" },
			json = { "jsonlint" },
			scss = { "stylelint" },
		}
	end,
}
