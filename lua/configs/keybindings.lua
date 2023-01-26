-- Mapeando a leader para '\'
vim.cmd([[
  let mapleader = "\\"
]])

local opts = { noremap=true, silent=true }

-- LSP
vim.api.nvim_set_keymap('n', 'gD', '<Cmd>lua vim.lsp.buf.declaration()<CR>', opts)
vim.api.nvim_set_keymap('n', 'K', '<Cmd>lua vim.lsp.buf.hover()<CR>', opts)
vim.api.nvim_set_keymap('i', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
vim.api.nvim_set_keymap('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
vim.api.nvim_set_keymap('n', '<space>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
vim.api.nvim_set_keymap('n', '<space>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
vim.api.nvim_set_keymap('n', '<space>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)
vim.api.nvim_set_keymap('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
vim.api.nvim_set_keymap("n", "<space>f", "<cmd>lua vim.lsp.buf.format()<CR>", opts)

-- Splited buffets
vim.keymap.set("n", "<leader>bh", "<C-w><left>", opts)
vim.keymap.set("n", "<leader>bl", "<C-w><right>", opts)
vim.keymap.set("n", "<leader>bj", "<C-w><down>", opts)
vim.keymap.set("n", "<leader>bk", "<C-w><up>", opts)

-- Error navigation
vim.keymap.set("n", "<leader>d[", vim.diagnostic.goto_prev, opts)
vim.keymap.set("n", "<leader>d]", vim.diagnostic.goto_next, opts)

-- Floaterm.
vim.cmd([[
  tnoremap    <silent>    <leader>f          <C-\><C-n>:FloatermNew<CR>
  tnoremap    <silent>    <leader>tl     <C-\><C-n>:FloatermPrev<CR>
  tnoremap    <silent>    <leader>th    <C-\><C-n>:FloatermNext<CR>
  nnoremap    <silent>    <leader>tk     :FloatermToggle<CR>
  tnoremap    <silent>    <leader>tj     <C-\><C-n>:FloatermToggle<CR>
]])

-- Nvim Tree.
vim.cmd([[
  nnoremap    <silent>    <leader>n   :NvimTreeToggle<CR>
]])

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


-- Nice to haves
---- Strings
vim.keymap.set('n', '<leader>sw', 'bve', {}) -- Select word
vim.keymap.set('n', '<leader>ss', 'T\'vt\'', {}) -- Select string inside '
vim.keymap.set('n', '<leader>ss\'', 'T\'vt\'', {}) -- Select string inside '
vim.keymap.set('n', '<leader>ss\"', 'T\"vt\"', {}) -- Select string inside "
vim.keymap.set('n', '<leader>sb', 'T vt ', {}) -- Select string inside "

