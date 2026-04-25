return {
  "mrjones2014/smart-splits.nvim",
  config = function()
    -- resizing splits
    -- for example `10<A-h>` will `resize_left` by `(10 * config.default_amount)`
    vim.keymap.set("n", "<M-h>", require("smart-splits").resize_left)
    vim.keymap.set("n", "<M-j>", require("smart-splits").resize_down)
    vim.keymap.set("n", "<M-k>", require("smart-splits").resize_up)
    vim.keymap.set("n", "<M-l>", require("smart-splits").resize_right)
  end,
}
