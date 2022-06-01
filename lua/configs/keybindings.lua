-- Mapeando a leader para '\'
vim.cmd([[
  let mapleader = "\\"
]])

-- Floaterm.
vim.cmd([[
  tnoremap    <silent>    <leader><up>       <C-\><C-n>:FloatermNew<CR>
  tnoremap    <silent>    <leader><left>     <C-\><C-n>:FloatermPrev<CR>
  tnoremap    <silent>    <leader><right>    <C-\><C-n>:FloatermNext<CR>
  nnoremap    <silent>    <leader>f          :FloatermToggle<CR>
  tnoremap    <silent>    <leader><down>     <C-\><C-n>:FloatermToggle<CR>
]])

-- Nvim Tree.
vim.cmd([[
  nnoremap    <silent>    <leader>n   :NvimTreeToggle<CR>
]])


