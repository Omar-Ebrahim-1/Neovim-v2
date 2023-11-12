vim.g.mapleader = " "
-- Netrw
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Update plugins
vim.keymap.set('n', '<leader>pu', [[:TSUpdate all<CR>]], { noremap = true, silent = true })

-- Visual mode move block
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Yank to end of line
vim.keymap.set("n", "Y", "y$")

-- Move lines
vim.keymap.set("n", "J", "mzJ`z")

-- Half page up/down
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Search cursor in middle
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Search functions in Python
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- Preserve yank
vim.keymap.set("n", "<leader>p", "\"_dP")

-- Yank to clipboard
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])
vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])

-- Add execute permission
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

-- Code Runner
vim.keymap.set("n", "<leader>rp", "<cmd>w % | !python3 %<CR>", { silent = true })
vim.keymap.set("n", "<leader>rj", "<cmd>w % | !tsc % && node %:r.js<CR>", { silent = true })
vim.keymap.set("n", "<leader>rb", "<cmd>w % | !bash %<CR>", { silent = true })
vim.keymap.set("n", "<leader>rl", "<cmd>w % | !lua %<CR>", { silent = true })
vim.keymap.set("n", "<leader>rc", "<cmd>w % | !g++ -Wall -o %:r % && ./%:r<CR>", { silent = true })
-- vim.keymap.set("n", "<leader>rs", "<cmd>w % | !swagger-ui-watcher %<CR>", { silent = true })
-- vim.keymap.set("n", "<leader>rc", "<cmd>w % | !gcc -Wall -o %:r % && ./%:r<CR>", { silent = true })
-- vim.keymap.set("n", "<leader>ra", "<cmd>w % | !as % -o %:r.o && ld %:r.o -o %:r<CR>", { silent = true })
vim.keymap.set("n", "<leader>rd", "<cmd>w % | !dot -Tpng % -o %:r.png && okular %:r.png<CR>", { silent = true })
vim.keymap.set("n", "<leader>rm", "<cmd>w % | MarkdownPreview<CR>", { silent = true })

-- Copilot
vim.api.nvim_set_keymap('i', '<C-,>', 'copilot#Accept("<CR>")', {expr=true, silent=true})
vim.api.nvim_set_keymap('s', '<C-,>', 'copilot#Accept("<CR>")', {expr=true, silent=true})
