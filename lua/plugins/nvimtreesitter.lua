return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    lazy = false,
    config = function()
      require("nvim-treesitter").setup({
        ensure_installed = { "lua", "python", "typescript" },
        highlight = {
          enable = true,
       },
      })
    end,
  },
}
