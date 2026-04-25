return {
  {
    "williamboman/mason.nvim",
    opts = { ensure_installed = { "prettier" } },
    config = function()
      require("mason").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = { "lua_ls", "ts_ls", "html", "tailwindcss", "intelephense", "graphql", "prismals" },
      })
    end,
  },
  {
    "ibhagwan/fzf-lua",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = {},
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      -- local capabilities = require("cmp_nvim_lsp").default_capabilities()
      local capabilities = require("blink.cmp").get_lsp_capabilities()
      local config = require("lspconfig")

      config.lua_ls.setup({ capabilities = capabilities })
      config.ts_ls.setup({ capabilities = capabilities })
      config.html.setup({ capabilities = capabilities })
      config.eslint.setup({ capabilities = capabilities })

      vim.keymap.set("n", "K", function()
        vim.lsp.buf.hover({ border = "rounded" })
      end, {})
      vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})

      -- fzf
      vim.keymap.set(
        "n",
        "<leader>gd",
        "<cmd>FzfLua lsp_definitions     jump_to_single_result=true silent=true ignore_current_line=true<cr>",
        { desc = "Goto Definition" }
      )
      vim.keymap.set(
        "n",
        "<leader>gr",
        "<cmd>FzfLua lsp_references      jump_to_single_result=true silent=true ignore_current_line=true<cr>",
        { desc = "References", nowait = true }
      )
      vim.keymap.set(
        "n",
        "<leader>gi",
        "<cmd>FzfLua lsp_implementations jump_to_single_result=true silent=true ignore_current_line=true<cr>",
        { desc = "Goto Implementation", nowait = true }
      )
      vim.keymap.set(
        "n",
        "<leader>gt",
        "<cmd>FzfLua lsp_typedefs        jump_to_single_result=true silent=true ignore_current_line=true<cr>",
        { desc = "Goto Type Definitions" }
      )
    end,
  },
}
