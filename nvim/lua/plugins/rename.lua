return {
  {
    "stevearc/dressing.nvim",
    opts = {},
    config = function(_, opts)
      require("dressing").setup(opts)
    end,
  },
  {
    "smjonas/inc-rename.nvim",
    opts = {
      input_buffer_type = "dressing",
    },
    config = function(_, opts)
      require("inc_rename").setup(opts)

      vim.keymap.set("n", "<leader>cr", function()
        return ":IncRename " .. vim.fn.expand("<cword>")
      end, { expr = true })
    end,
  },
}
