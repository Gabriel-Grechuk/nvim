-- Mapeando a leader para '\'
vim.cmd([[
  let mapleader = "\\"
]])

-- Floaterm.
vim.cmd([[
  tnoremap    <silent>    <leader>f          <C-\><C-n>:FloatermNew<CR>
  tnoremap    <silent>    <leader><left>     <C-\><C-n>:FloatermPrev<CR>
  tnoremap    <silent>    <leader><right>    <C-\><C-n>:FloatermNext<CR>
  nnoremap    <silent>    <leader><up>       :FloatermToggle<CR>
  tnoremap    <silent>    <leader><down>     <C-\><C-n>:FloatermToggle<CR>
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

