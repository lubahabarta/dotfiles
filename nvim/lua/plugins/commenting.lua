return {
  "terrortylor/nvim-comment",
  opts = {
    create_mappings = false,
  },
  config = function(_, opts)
    require("nvim_comment").setup(opts)

    vim.keymap.set("n", "<A-/>", ":CommentToggle<CR>")
    vim.keymap.set("x", "<A-/>", ":'<,'>CommentToggle<CR>")
  end,
}
