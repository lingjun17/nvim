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

-- Resize with arrows
keymap("n", "<leader><Up>", ":resize +1<CR><leader>", opts)
keymap("n", "<leader><Down>", ":resize -1<CR><leader>", opts)
keymap("n", "<leader><Left>", ":vertical resize +1<CR><leader>", opts)
keymap("n", "<leader><Right>", ":vertical resize -1<CR><leader>", opts)

-- Navigate buffers
-- keymap("n", "<A-h>", ":bprevious<CR>", opts)
-- keymap("n", "<A-l>", ":bnext<CR>", opts)

-- switch tab keymap
keymap("n", "<S-h>", ":BufferLineCyclePrev<CR>", opts)
keymap("n", "<S-l>", ":BufferLineCycleNext<CR>", opts)
-- close tab "moll/vim-bbye"
keymap("n", "<leader>bb", ":Bdelete!<CR>", opts)
keymap("n", "<leader>br", ":BufferLineCloseRight<CR>", opts)
keymap("n", "<leader>bl", ":BufferLineCloseLeft<CR>", opts)

-- Visual --
-- Stay in indent mode 
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)


-- Move text up and down
keymap("v", "<S-k>", ":m .-2<CR>==", opts)
keymap("v", "<S-j>", ":m .+1<CR>==", opts)

keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)
keymap("x", "<S-j>", ":move '>+1<CR>gv-gv", opts)
keymap("x", "<S-k>", ":move '<-2<CR>gv-gv", opts)

-- Terminal --
-- Better terminal navigation
-- keymap("t", "<C-h>", "<C-\\><C-N><C-w>h", term_opts)
-- keymap("t", "<C-j>", "<C-\\><C-N><C-w>j", term_opts)
-- keymap("t", "<C-k>", "<C-\\><C-N><C-w>k", term_opts)
-- keymap("t", "<C-l>", "<C-\\><C-N><C-w>l", term_opts)

keymap("n", "<leader>f", "<cmd>Telescope find_files<cr>", opts)
-- keymap("n", "<leader>f", "<cmd>lua require'telescope.builtin'.find_files(require('telescope.themes').get_dropdown({ previewer = false }))<cr>", opts)
keymap("n", "<leader><S-f>", "<cmd>Telescope live_grep<cr>", opts)
keymap("n", "<Leader>r", "<cmd>Telescope oldfiles<cr>", opts)




