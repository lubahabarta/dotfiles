return {
  "windwp/nvim-ts-autotag",
  config = function()
    require("nvim-ts-autotag").setup({
      opts = {
        enable_close_on_slash = true,
      },
      per_filetype = {
        ["html"] = { enable_close = true },
        ["xml"] = { enable_close = true },
        ["javascript"] = { enable_close = true },
        ["typescript"] = { enable_close = true },
        ["vue"] = { enable_close = true },
        ["svelte"] = { enable_close = true },
        ["astro"] = { enable_close = true },
        ["php"] = { enable_close = true },
        ["tsx"] = { enable_close = true },
        ["jsx"] = { enable_close = true },
      },
    })
  end,
}
