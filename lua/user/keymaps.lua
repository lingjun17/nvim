local opts = { noremap = true, silent = true }

local term _opts = { silent = true }

-- Shorten fucntion name
local keymap = vim.api.nvim_set_keymap

-- Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "
 
-- Modes
--  normal_mode = "n"
--  insert_mode = "i"
--  visual_mode = "v"
--  visual_block_mode = "x"
--  term_mode = "t"
--  command_mode = "c"

-- Normal Mode --
-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- Lexplorer 
-- keymap("n", "<leader>e", ":Lex 30<cr>", opts) -- Lex is short for Lexplorer

-- Nvim-tree
keymap("n", "<leader>e", ":NvimTreeToggle<cr>", opts) -- Lex is short for Lexplorer

-- TODO: Resize with arrows
keymap("n", "<leader><C-Up>", ":resize +2<CR>", opts)
keymap("n", "<leader><C-Down>", ":resize -2<CR>", opts)
keymap("n", "<leader><C-Left>", ":vertical resize +2<CR>", opts)
keymap("n", "<leader><C-Right>", ":vertical resize -2<CR>", opts)

-- Navigate buffers
keymap("n", "<C-=>", ":bprevious<CR>", opts)
keymap("n", "<C-+>", ":bnext<CR>", opts)


-- Visual --
-- Stay in indent mode 
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)


-- Move text up and down
keymap("v", "<A-k>", ":m .-2<CR>==", opts)
keymap("v", "<A-j>", ":m .+1<CR>==", opts)

keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)
keymap("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
keymap("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)

-- Terminal --
-- Better terminal navigation
-- keymap("t", "<C-h>", "<C-\\><C-N><C-w>h", term_opts)
-- keymap("t", "<C-j>", "<C-\\><C-N><C-w>j", term_opts)
-- keymap("t", "<C-k>", "<C-\\><C-N><C-w>k", term_opts)
-- keymap("t", "<C-l>", "<C-\\><C-N><C-w>l", term_opts)

keymap("n", "<leader>f", "<cmd>Telescope find_files<cr>", opts)
-- keymap("n", "<leader>f", "<cmd>lua require'telescope.builtin'.find_files(require('telescope.themes').get_dropdown({ previewer = false }))<cr>", opts)
keymap("n", "<leader><S-f>", "<cmd>Telescope live_grep<cr>", opts)





