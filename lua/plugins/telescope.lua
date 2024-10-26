return {
	{
		"telescope.nvim",
		opts = {
			defaults = {
				layout_strategy = "vertical",
				layout_config = {
					preview_cutoff = 10,
				},
			},
		},
	},
	{
		"nvim-telescope/telescope-frecency.nvim",
		config = function()
			require("telescope").load_extension("frecency")
		end,
		keys = {
			{ "<leader>sf", "<cmd>Telescope frecency<cr>", desc = "Frecuency" },
		},
	},
}
