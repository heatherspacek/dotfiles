-- options
-- =======
vim.o.number = true
vim.o.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }
vim.o.confirm = true
vim.o.cursorline = true
vim.o.mouse = 'a'
-- vim.o.showmode = false
vim.schedule(function() vim.o.clipboard = 'unnamedplus' end)
vim.o.breakindent = true
vim.o.undofile = true
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.signcolumn = 'no'
vim.o.updatetime = 250
vim.o.timeoutlen = 300
vim.o.splitright = true
vim.o.splitbelow = true
vim.o.relativenumber = true
vim.o.inccommand = 'split'
vim.o.scrolloff = 10

vim.opt.termguicolors = false

-- plugins
-- =======
vim.pack.add({
    "https://github.com/dylanaraps/wal.vim",
    "https://github.com/nvim-treesitter/nvim-treesitter",
    "https://github.com/nvim-treesitter/nvim-treesitter-context",
    "https://github.com/nvim-mini/mini.nvim"
    })
vim.lsp.config['ty'] = {
	cmd = { 'uvx', 'ty', 'server' },
	filetypes = { 'python' },
	root_markers = { 'ty.toml', 'pyproject.toml', 'setup.py', 'setup.cfg', 'requirements.txt', '.git' },
}
vim.lsp.enable('ty')
require('nvim-treesitter').install { 'python', 'odin' }
require('treesitter-context').setup{
	enable=true,
	max_lines=5,
	separator='.',
}
require('mini.icons').setup()
require('mini.diff').setup()
require('mini.git').setup()
require('mini.tabline').setup()
require('mini.statusline').setup()
require('mini.completion').setup()
require('mini.starter').setup()
require('mini.files').setup({ windows = { preview = true } })
vim.cmd.colorscheme("wal")
