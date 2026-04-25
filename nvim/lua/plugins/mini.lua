return {
  -- {
  --   "lukas-reineke/indent-blankline.nvim",
  --   config = function()
  --     require("ibl").setup({
  --       scope = {
  --         show_start = false,
  --         show_end = false,
  --       },
  --       indent = { char = "│" },
  --     })
  --   end,
  -- },
  {
    "echasnovski/mini.nvim",
    opts = {
      move = {
        mappings = {
          left = "H",
          right = "L",
          down = "J",
          up = "K",
          line_left = "",
          line_right = "",
          line_down = "",
          line_up = "",
        },
      },

      pairs = {},

      indentscope = {
        event = "LazyFile",
        draw = {
          animation = function()
            return 0
          end,
        },
        options = {
          n_lines = 10000,
          indent_at_cursor = false,
          try_as_border = true,
        },
        symbol = "│",
      },
    },
    config = function(_, opts)
      require("mini.move").setup(opts.move)

      require("mini.pairs").setup(opts.pairs)

      local indentscope = require("mini.indentscope")
      indentscope.setup(opts.indentscope)
    end,
  },
}
