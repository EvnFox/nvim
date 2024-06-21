return {
"dccsillag/magma-nvim", 
  "folke/which-key.nvim",
  "folke/neoconf.nvim",
{
  'Julian/lean.nvim',
  event = { 'BufReadPre *.lean', 'BufNewFile *.lean' },

  dependencies = {
    'neovim/nvim-lspconfig',
    'nvim-lua/plenary.nvim',
    -- you also will likely want nvim-cmp or some completion engine
  },

  -- see details below for full configuration options
  opts = {
    lsp = {
      on_attach = on_attach,
    },
    mappings = true,
  }
},
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
  'iamcco/markdown-preview.nvim', 
  {
  'stevearc/oil.nvim',
  lazy=false,
  opts = {},
},
 {
    "ellisonleao/gruvbox.nvim",
    lazy = false, 
    priority = 1000, 
    config = function()
	    -- setup must be called before loading the colorscheme
	-- Default options:
	require("gruvbox").setup({
  	undercurl = true,
  	underline = true,
  	bold = true,
 	 italic = {
    	strings = true,
    	comments = true,
    	operators = false,
    	folds = true,
  	},
  	strikethrough = true,
  	invert_selection = false,
  	invert_signs = false,
  	invert_tabline = false,
  	invert_intend_guides = false,
  	inverse = true, -- invert background for search, diffs, statuslines and errors
  	contrast = "soft", -- can be "hard", "soft" or empty string
  	palette_overrides = {bright_orange = "#fa865c",bright_green = '#7cab61', bright_red = '#b05d6a' },
  	overrides = {},
  	dim_inactive = false,
  	transparent_mode = false,
	})

    vim.o.background = "dark" 
    vim.cmd([[colorscheme gruvbox]])
    end, 
   }, 
  {
    "lervag/vimtex", 
    lazy = false,
    --vim.cmd(g:vimtex_fold_enabled)

   vim.g.vimtex_fold_enabled  
  -- vim.g.vimtex_foldmethod = 'indent'
    -- vim.g.vimtex_view_method = "sumatra"
--    g.vimtex_view_method = "sumatrapdf" 
  --  end, 
    },
  --"xiyaowong/transparent.nvim", 
  "dcampos/nvim-snippy", 
  'nvim-treesitter/nvim-treesitter'
}


--vim.o.background = "dark" -- or "light" for light mode
--vim.cmd([[colorscheme gruvbox]])
--
--"savq/melange-nvim"
