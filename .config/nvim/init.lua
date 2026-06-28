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
    "https://github.com/nvim-telescope/telescope.nvim",
    "https://github.com/nvim-lua/plenary.nvim",
    -- "https://github.com/windwp/nvim-autopairs",
    "https://github.com/dylanaraps/wal.vim",
    "https://github.com/nvim-treesitter/nvim-treesitter",
    "https://github.com/nvim-treesitter/nvim-treesitter-context",
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
vim.cmd.colorscheme("wal")
