-- leader key = space
-- we can use leader key to set up custom keybinds that don't clash with vim defaults
vim.g.mapleader = " "

local keymap = vim.keymap

-- example
keymap.set("i", "jk", "<ESC>") -- in insert mode, jk will be the same as escing


-- clear highlights
keymap.set("n", "<leader>c", ":nohl<CR>")

-- delete whole word
keymap.set("i", "<C-h>", "<C-w>") -- delete the previous word in insert mode with Ctrl + Backspace


-- splitting windows
keymap.set("n", "<leader>]", "<C-w>v") -- vert
keymap.set("n", "<leader>[", "<C-w>s") -- hor
keymap.set("n", "<leader>\\", ":close<CR>") -- close current

-- new tabs
keymap.set("n", "<leader>to", ":tabnew<CR>")    -- new tab
keymap.set("n", "<leader>tx", ":tabclose<CR>")  -- close tab
keymap.set("n", "<leader>tn", ":tabn<CR>")    -- next
keymap.set("n", "<leader>tp", ":tabp<CR>")    -- previous

-- plugin keymaps
-- vim-maximizer
keymap.set("n", "<leader>'", ":MaximizerToggle<CR>") -- toggle terminal as biggest

-- comments
-- keymap.set("n", "<C-_>", "gcc", { noremap = false} ) -- toggle commenting a line
--

-- nvim-tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")

-- telescope
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>")
keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>")
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>")
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>")
keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>")



keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>")
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>")
keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>")
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>")
keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>")
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>")
keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>")
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>")
keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>")
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>")

