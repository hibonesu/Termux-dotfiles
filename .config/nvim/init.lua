# configuration
vim.opt.number = true          -- Show line numbers
vim.opt.relativenumber = true  -- Use relative line numbers for jumping
vim.opt.termguicolors = true   -- Enable 24-bit RGB colors
vim.opt.signcolumn = "yes"     -- Keep sign column open to prevent text shifting
vim.opt.cursorline = true   
vim.opt.cmdheight = 1
vim.opt.statusline = " %f %m %= %y  %l:%c "
vim.opt.showmode = false
vim.api.nvim_set_hl(0, "StatusLine", { bg = "none", fg = "#cdd6f4", bold = true })
vim.api.nvim_set_hl(0, "StatusLineNC", { bg = "none", fg = "#cdd6f4" })
vim.opt.fillchars:append({ stl = "─", stlnc = "─" })




vim.cmd("colorscheme pallate")

-- 1. Bootstrap lazy.nvim (tells Neovim to download the manager if missing)
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- 2. Setup lazy.nvim and import the plugins folder
require("lazy").setup({
  spec = {
    -- This looks directly inside ~/.config/nvim/lua/plugins/
    { import = "plugins" }, 
  },
})

