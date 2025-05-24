return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    event = { "ColorSchemePre" },
    init = function()
      vim.cmd.colorscheme "catppuccin-latte"
    end
  },
}
