---@diagnostic disable: undefined-global
return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {
          "lua_ls",
          "gopls",
          "astro",
          "templ",
          "emmet_ls",
          "tailwindcss",
          "ts_ls",
          "html",
        },
      })
    end,
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local capabilities = require("cmp_nvim_lsp").default_capabilities()
      -- local lspconfig = require("lspconfig")

      vim.lsp.config("lua_ls", {
        capabilities = capabilities,
      })
      vim.lsp.config("ts_ls", {
        capabilities = capabilities,
      })
      vim.lsp.config("gopls",{
        capabilities = capabilities,
      })
      vim.lsp.config("astro",{
        capabilities = capabilities,
      })
      vim.lsp.config("emmet_ls",{
        capabilities = capabilities,
      })
      vim.lsp.config("tailwindcss",{
        capabilities = capabilities,
        filetypes = { "templ", "astro", "javacript", "typescript", "react" },
        init_options = { userLanguages = { templ = "html"} },
      })
      vim.lsp.config("html",{
        capabilities = capabilities,
        filetypes = { "html", "templ" },
      })
      vim.lsp.config("templ",{
        capabilities = capabilities,
      })

      vim.keymap.set("n", "H", vim.lsp.buf.hover, {})
      vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
      vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, opts)

      vim.filetype.add({ extension = { templ = "templ" } })
    end,
  },
}
