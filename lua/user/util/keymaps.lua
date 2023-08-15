vim.g.mapleader = " "
local map = vim.keymap.set
map("n", "<leader>pv", vim.cmd.Ex)
-- for some reason <leader>e is bugged :\
map("n", "<leader>\\", ":NeoTreeShowToggle <cr>")
-- black magic
map("v", "J", ":m '>+1<CR>gv=gv")
map("v", "K", ":m '<-2<CR>gv=gv")
-- lazy shortcuts
map("n", "<C-f>", "zf%")
map("v", "<C-c>", "<esc>")
-- insert newline
map("n", "<M-n>", "o<esc>")
map("n", "<M-S-n>", "O<esc>")
-- duplicate current line
map("n", "<C-d>", "yy P")
-- delete strings
map("n", "D\"", "dF\"x")
map("n", "d\"", "df\"")
-- replaces the next or prev word
map("n", "pw", "dw\"0Pb")
map("n", "pe", "de\"0Pb")
map("n", "pb", "vb\"0P")
map("n", "pd", "dd\"0P")
map("x", "<S-p>", "\"0P")
-- fix for a problem I caused :p
map("n", "<S-p>", "\"0P")
map("n", "pp", "p")
-- yanks current file path
map("n", "<C-g>y", ":let @* = expand(\"%:p\")<cr>")
-- wrapping
map("x", "qr9", "c(<C-r>\")<esc>")
map("x", "qr[", "c[<C-r>\"]<esc>")
map("x", "qr{", "c{<C-r>\"}<esc>")
map("x", "qr\"", "c\"<C-r>\"\"<esc>")
-- save commad
map("i", "<C-s>", "<esc>:w<enter>a")
map("n", "<C-s>", ":w<enter>")

map(
  'n',
  '<C-k>',
  function() require('lsp_signature').toggle_float_win() end,
  { silent = true, noremap = true, desc = 'toggle signature' }
)

map(
  'n',
  '<Leader>k',
  function() vim.lsp.buf.signature_help() end,
  { silent = true, noremap = true, desc = 'toggle signature' }
)
