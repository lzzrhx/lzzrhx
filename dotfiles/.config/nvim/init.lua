-- Set leader key
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Set colorscheme
-- vim.cmd.colorscheme("tasty_apprentice")
vim.cmd.colorscheme("habamax_custom")

-- Enable/disable nerd font icons
vim.g.enable_nerd_font = false

-- Set line number and ruler
vim.opt.number = true
vim.opt.ruler = true

-- Disable wrapping
vim.opt.wrap = false

-- Enable auto indent
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.breakindent = true

-- Set tab size to 4 spaces
vim.opt.tabstop = 4
vim.opt.softtabstop = 0
vim.opt.shiftwidth = 0
vim.opt.expandtab = true

-- Incremental and highlight search
vim.opt.incsearch = true
vim.opt.hlsearch = true

-- Persistent undo
vim.opt.undofile = true

-- Statusline, tabline and signcolumn always visible
vim.opt.laststatus = 2
vim.opt.showtabline = 2
vim.opt.signcolumn = 'yes'

-- Scroll offset
vim.opt.scrolloff = 4
vim.opt.sidescrolloff = 2

-- Set default split behaviour
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Preview substitutions
vim.opt.inccommand = 'split'

-- Hide the default mode indicator
vim.opt.showmode = false

-- Set horizontal wildmenu
vim.opt.wildoptions = { 'tagfile' }

-- Set cursor shape
vim.opt.guicursor = "n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor,sm:block-blinkwait175-blinkoff150-blinkon175"

-- Misc. settings
vim.opt.autoread = true
vim.opt.updatetime = 250
vim.opt.timeoutlen = 300
vim.opt.cursorline = true
vim.opt.cursorlineopt = "number"
vim.opt.foldenable = false
vim.opt.formatoptions:append('j')
vim.opt.diffopt:append('iwhiteall')
vim.opt.list = true
vim.opt.listchars = { tab = '»»', lead = '·', nbsp = '␣'}
vim.opt.fillchars = { eob = " " }
--vim.opt.completeopt:remove({'preview'})

-- Set clipboard
-- vim.opt.clipboard = "unnamedplus"

-- Enable mouse support
--vim.opt.mouse = 'a'

-- Case-insensitive searching unless capital letters in search term
--vim.opt.ignorecase = true
--vim.opt.smartcase = true

-- Load external files
require("keybinds")
require("autocmd")
require("plugin-manager")

