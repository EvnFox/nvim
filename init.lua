local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
 vim.fn.system({
  "git",
  "clone",
  "--filter=blob:none",
  "--single-branch",
  "https://github.com/folke/lazy.nvim.git",
  lazypath,
 })
end

vim.opt.runtimepath:prepend(lazypath)
vim.g.mapleader = " "
require("lazy").setup("plugins", {
 defaults = { lazy = false }, 
 install = { missing = true},
 checker = { enabled = true },
 performance = {
  rtp = {
   disabled_plugins = {
    "gzip",
    "matchit",
    "matchparen",
    "netrwPlugin",
    "tarPlugin",
    "tohtml",
    "tutor",
    "zipPlugin",
   },
  },
 },
 -- debug = true,
})

--vim.o.background = "dark" -- or "light" for light mode
--vim.cmd([[colorscheme gruvbox]])
