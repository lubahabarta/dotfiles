return {
  "ggandor/leap.nvim",
  config = function()
    require("leap").setup({})

    vim.keymap.set({ "n", "x", "o" }, "f", "<Plug>(leap-forward)")
    vim.keymap.set({ "n", "x", "o" }, "F", "<Plug>(leap-backward)")
  end,
}
