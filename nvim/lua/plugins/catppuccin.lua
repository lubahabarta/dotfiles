return {
  "catppuccin/nvim",
  lazy = false,
  name = "catppuccin",
  priority = 1000,
  opts = {
    background = {
      light = "macchiato",
      dark = "macchiato",
    },
    transparent_background = true,
    highlight_overrides = {
      macchiato = function(colors)
        return {
          ["@comment"] = { fg = colors.surface2, style = { "italic" } },
          LineNrAbove = { fg = colors.overlay0 },
          LineNr = { fg = colors.peach, style = { "bold" } },
          LineNrBelow = { fg = colors.overlay0 },
        }
      end,
    },
  },
  config = function(_, opts)
    require("catppuccin").setup(opts)
    -- vim.cmd.colorscheme("catppuccin")
  end,
}
