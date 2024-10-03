vim.opt.guicursor = ""

vim.opt.foldenable = false
vim.opt.foldmethod = 'manual'
vim.opt.foldlevelstart = 99

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.shiftwidth = 8
vim.opt.softtabstop = 8
vim.opt.tabstop = 8
vim.opt.expandtab = false

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.wildmode = 'list:longest'
vim.opt.wildignore = '.hg,.svn,*~,*.png,*.jpg,*.gif,*.min.js,*.swp,*.o,vendor,dist,_site'

vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.splitright = true
vim.opt.splitbelow = true

vim.opt.updatetime = 50

vim.opt.colorcolumn = '80'
vim.opt.shell = "/usr/bin/fish"
--- except in Rust where the rule is 100 characters
vim.api.nvim_create_autocmd('Filetype', { pattern = 'rust', command = 'set colorcolumn=100' })
