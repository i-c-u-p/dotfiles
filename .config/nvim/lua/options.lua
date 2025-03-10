vim.cmd('syntax enable')
vim.cmd('set undodir=$XDG_CACHE_HOME/nvim/undo')
vim.cmd('set undofile')

local set = vim.opt
set.mouse = "a"
set.termguicolors = true
set.hidden = true
set.wildmenu = true
set.wildignorecase = true
set.fileignorecase = true
set.showcmd = true
set.hlsearch = true
set.ignorecase = true
set.smartcase = true
set.incsearch = true
set.backspace= 'indent,eol,start'
set.pastetoggle = '<F11>'
set.confirm = true
set.number = true
set.relativenumber = true
set.shiftwidth = 4
set.softtabstop = 4
set.autoindent = true
set.expandtab = true
set.showmode = false
set.ruler = false
set.timeout = false
set.ttimeoutlen = 200
set.wrap = false
set.fcs = 'eob: '
set.swapfile = false
set.pumblend = 0
set.splitright = true
set.splitbelow = true
set.cursorline = true

-- Disable default vim plugins
local disabled_built_ins = {
    "netrw",
    "netrwPlugin",
    "netrwSettings",
    "netrwFileHandlers",
    "gzip",
    "zip",
    "zipPlugin",
    "tar",
    "tarPlugin",
    "getscript",
    "getscriptPlugin",
    "vimball",
    "vimballPlugin",
    "2html_plugin",
    "logipat",
    "rrhelper",
    "spellfile_plugin",
    "matchit"
}

for _, plugin in pairs(disabled_built_ins) do
    vim.g["loaded_" .. plugin] = 1
end
