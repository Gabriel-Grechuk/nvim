-- Packer bootstrap.
require ('plugins.packer')

-- Loading plugins.
require ('plugins.plugins')

-- Loading my config.
require ('configs.settings')

-- Loading Plugins configs.
require ('configs.plugins')

--  Keybindings.
require ('configs.keybindings')

-- LSP.
require ('configs.lsp.lspconfig')

-- Toolscoc#pum#visible() ? coc#pum#confirm() : "\\
require ('custom.tools')

-- Debuggin configs.
require ('configs.debugger')

