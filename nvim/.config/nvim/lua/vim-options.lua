vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.g.mapleader = " "

vim.keymap.set("i", "jk", "<Esc>", {})
vim.keymap.set("n", "<leader>s", ":w<CR>", {})

-- Navigate vim panes better
vim.keymap.set('n', '<c-k>', ':wincmd k<CR>')
vim.keymap.set('n', '<c-j>', ':wincmd j<CR>')
vim.keymap.set('n', '<c-h>', ':wincmd h<CR>')
vim.keymap.set('n', '<c-l>', ':wincmd l<CR>')

vim.keymap.set('n', '<TAB>', ':bnext<CR>')
vim.keymap.set('n', '<s-TAB>', ':bprev<CR>')
vim.keymap.set('n', '<leader>bc', ':bw<CR>')

-- Shift line  up or down
vim.keymap.set("v", "<s-k>", ":m-2<CR>gv=gv")
vim.keymap.set("v", "<s-j>", ":m '>+1<CR>gv=gv")

vim.keymap.set("n", "<s-k>", "5k", {noremap = true})
vim.keymap.set("n", "<s-j>", "5j", {noremap = true})

vim.opt.clipboard:append("unnamedplus")

-- Toggle Terminal 
vim.g.floaterm_height=0.8
vim.g.floaterm_width=0.8
vim.keymap.set('n', '<leader>t', ':FloatermToggle --height=0.8 --width=0.8<CR>')
vim.keymap.set('t', '<leader>t', '<C-\\><C-n>:FloatermToggle<CR>')

