return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    lazy = false,
    config = function()
      local trs = require("nvim-treesitter")
      trs.install({
        "lua", "python", "php", "terraform"
      })
      trs.setup({})
      vim.api.nvim_create_autocmd('FileType', {
        pattern = {"python", "php", "terraform"},
        callback = function ()
          vim.treesitter.start()
        end
      })
    end,
  },
}
