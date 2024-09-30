  -- Autopairs config.
require ('nvim-autopairs').setup({
  enable_check_bracket_line = false
})

-- Colorizer config.
require ('colorizer').setup {
  '*'; 
  css = { rgb_fn = true; }
}

-- Ident Blank Line
vim.opt.list = true
vim.opt.listchars:append("space:⋅")
vim.opt.listchars:append("eol:↴")

local highlight = {
    "RainbowRed",
    "RainbowYellow",
    "RainbowBlue",
    "RainbowOrange",
    "RainbowGreen",
    "RainbowViolet",
    "RainbowCyan",
}

local hooks = require "ibl.hooks"
-- create the highlight groups in the highlight setup hook, so they are reset
-- every time the colorscheme changes
hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
    vim.api.nvim_set_hl(0, "RainbowRed", { fg = "#E06C75" })
    vim.api.nvim_set_hl(0, "RainbowYellow", { fg = "#E5C07B" })
    vim.api.nvim_set_hl(0, "RainbowBlue", { fg = "#61AFEF" })
    vim.api.nvim_set_hl(0, "RainbowOrange", { fg = "#D19A66" })
    vim.api.nvim_set_hl(0, "RainbowGreen", { fg = "#98C379" })
    vim.api.nvim_set_hl(0, "RainbowViolet", { fg = "#C678DD" })
    vim.api.nvim_set_hl(0, "RainbowCyan", { fg = "#56B6C2" })
end)

require("ibl").setup { indent = { highlight = highlight } }

--  Nvim Tree.
require ('nvim-tree').setup()

-- Virt column.
require ('virt-column').setup()

-- Impatient.
require ('impatient')

-- Todo-comments.
require ('todo-comments').setup {}

-- Lualine.
require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = 'dracula',
    component_separators = { left = '', right = ''},
    section_separators = { left = '', right = ''},
    disabled_filetypes = {},
    always_divide_middle = true,
    globalstatus = false,
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', 'diff', 'diagnostics'},
    lualine_c = {'filename'},
    lualine_x = {'encoding', 'fileformat', 'filetype'},
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  extensions = {}
}

-- nvim-treesitter.
require('nvim-treesitter.configs').setup {
  ensure_installed = { "c", "cpp", "lua", "rust", "javascript", "typescript", "svelte" },
  hightlight = { enable = true }
}

-- LSP Installler.
--require('nvim-lsp-installer').setup ({
  --automatic_installation = true,
  --ui = {
    --icons = {
      --server_installed = "✓",
      --server_pending = "➜",
      --server_uninstalled = "✗"
    --}
  --}
--})

local rt = require("rust-tools")
rt.setup({})
rt.inlay_hints.enable()

vim.cmd [[
  let g:neoformat_try_node_exe = 1
]]

require("flutter-tools").setup {}

---- Arduino LSP.
--require("arduino-nvim").setup {
  --default_fqbn = "arduino:avr:uno",
  --clangd = nil|string, -- path to a clangd executable
  --arduino = nil|string, -- path to a arduino-cli executable
  --extra_args = nil|table, -- command line args to arduino lsp
  --root_dir = nil|string,
  --capabilities = nil
  --filetypes = {"arduino"},
  --callbacks = {
    --on_attach = nil|function(client, bufnr)
  --}
--}
  
--}
