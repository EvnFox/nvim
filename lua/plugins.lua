return {
  "folke/which-key.nvim",
  "folke/neoconf.nvim",

 -- {
   --"folke/tokyonight.nvim",
    --lazy = false, -- make sure we load this during startup if it is your main colorscheme
   -- priority = 1000, -- make sure to load this before all the other start plugins
    --config = function()
   -- load the colorscheme here
    --  vim.cmd([[colorscheme tokyonight]])
   -- end,
  --},
  --
  "folke/neodev.nvim",
  {
    "ellisonleao/gruvbox.nvim",
    lazy = false, 
    priority = 1000, 
    config = function() 
    vim.o.background = "dark" 
    vim.cmd([[colorscheme gruvbox]])
    end, 
    },
  {
    "lervag/vimtex", 
    lazy = false,
    -- vim.g.vimtex_view_method = "sumatra"
--    g.vimtex_view_method = "sumatrapdf" 
  --  end, 
    },
  "xiyaowong/transparent.nvim", 
}


--vim.o.background = "dark" -- or "light" for light mode
--vim.cmd([[colorscheme gruvbox]])
--
--"savq/melange-nvim"
