-- Mapeando a leader para '\'
vim.cmd([[
  let mapleader = "\\"
]])

local opts = { noremap=true, silent=true }

vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts)
vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
vim.keymap.set("n", "gi", vim.lsp.buf.implementation, opts)
vim.keymap.set("n", "<space>D", vim.lsp.buf.type_definition, opts)
vim.keymap.set("n", "<space>rn", vim.lsp.buf.rename, opts)
vim.keymap.set("n", "<space>ca", vim.lsp.buf.code_action, opts)
vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
vim.keymap.set("n", "<space>", vim.lsp.buf.format, opts)


-- Splited buffets
vim.keymap.set("n", "<leader>bh", "<C-w><left>", opts)
vim.keymap.set("n", "<leader>bl", "<C-w><right>", opts)
vim.keymap.set("n", "<leader>bj", "<C-w><down>", opts)
vim.keymap.set("n", "<leader>bk", "<C-w><up>", opts)

-- Error navigation
vim.keymap.set("n", "<leader>d[", vim.diagnostic.goto_prev, opts)
vim.keymap.set("n", "<leader>d]", vim.diagnostic.goto_next, opts)

-- Floaterm.
vim.keymap.set("t", "<leader>f", "<C-\\><C-n>:FloatermNew<CR>", opts)
vim.keymap.set("t", "<leader>tl", "<C-\\><C-n>:FloatermNext<CR>", opts)
vim.keymap.set("t", "<leader>th", "<C-\\><C-n>:FloatermPrev<CR>", opts)
vim.keymap.set("n", "<leader>tk", "<cmd>FloatermToggle<CR>", opts)
vim.keymap.set("t", "<leader>tj", "<C-\\><C-n>:FloatermToggle<CR>", opts)


-- Nvim Tree.
vim.keymap.set("n", "<leader>n", "<cmd>NvimTreeToggle<CR>", opts)

-- Telescope config
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})

-- NEOFormat
vim.keymap.set('n', '<C-i>', ':Neoformat<CR>')

-- Spawn lazygit
vim.keymap.set('n', '<leader>gg', ':FloatermNew --height=0.7 --width=0.9 --wintype=float --name=lazygit --autoclose=2 lazygit<CR>')
vim.keymap.set('n', '<leader>gf', ':FloatermNew --height=0.7 --width=0.9 --wintype=float --name=ranger --autoclose=2 ranger<CR>')

