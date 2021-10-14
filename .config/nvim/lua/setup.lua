local set = vim.opt

if vim.fn.has('mouse') then
   set.mouse = "a"
end

if vim.fn.has('filetype') then
    vim.cmd('filetype indent plugin on')
end

if vim.fn.has('syntax') then
    vim.cmd('syntax on')
end

if vim.fn.has('persistent_undo') then
    vim.cmd('set undodir=$HOME/.vim/undo')
    vim.cmd('set undofile')
end

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

vim.cmd('colorscheme gruvbox')
vim.cmd('highlight CursorLineNr cterm=bold ctermfg=Yellow ctermbg=none')
vim.cmd('highlight Normal ctermbg=none')
