local vimopt = vim.opt

-- tabs & indentation
vimopt.tabstop = 4
vimopt.shiftwidth = 4
vimopt.expandtab = true
vimopt.autoindent = true

-- line wrapping
vimopt.wrap = false;

-- search settings
vimopt.ignorecase = true
vimopt.smartcase = true

-- clipboard
vimopt.clipboard:append("unnamedplus")

-- split windows
vimopt.splitright = true;
vimopt.splitbelow = true;

-- dash (-) is a part of work (hello-world)
vimopt.iskeyword:append("-")

vim.api.nvim_create_autocmd('BufWritePost', {
  command = 'LspRestart',
})
