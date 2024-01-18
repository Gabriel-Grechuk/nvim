local nvim_lsp = require('lspconfig')
local protocol = require'vim.lsp.protocol'

local cmp = require'cmp'

local on_attach = function(client, bufnr)
	protocol.SymbolKind = { }
	protocol.CompletionItemKind = {
		'', -- Text
		'', -- Method
		'', -- Function
		'', -- Constructor
		'', -- Field
		'', -- Variable
		'', -- Class
		'ﰮ', -- Interface
		'', -- Module
		'', -- Property
		'', -- Unit
		'', -- Value
		'', -- Enum
		'', -- Keyword
		'﬌', -- Snippet
		'', -- Color
		'', -- File
		'', -- Reference
		'', -- Folder
		'', -- EnumMember
		'', -- Constant
		'', -- Struct
		'', -- Event
		'ﬦ', -- Operator
		'', -- TypeParameter
	}

	vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

	cmp.setup({
  	snippet = {
    	-- REQUIRED - you must specify a snippet engine
    	expand = function(args)
				vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
				--require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
      	-- require('snippy').expand_snippet(args.body) -- For `snippy` users.
				--vim.fn["UltiSnips#Anon"](args.body) -- For `ultisnips` users.
    	end,
  	},
  	mapping = {
      ['<C-n>'] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Insert }),
      ['<C-p>'] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Insert }),
      ['<Down>'] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Select }),
      ['<Up>'] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Select }),
    	['<C-b>'] = cmp.mapping(cmp.mapping.scroll_docs(-5), { 'i', 'c' }),
    	['<C-f>'] = cmp.mapping(cmp.mapping.scroll_docs(3), { 'i', 'c' }),
    	['<C-Space>'] = cmp.mapping(cmp.mapping.complete(), { 'i', 'c' }),
    	['<C-y>'] = cmp.config.disable, -- Specify `cmp.config.disable` if you want to remove the default `<C-y>` mapping.
    	['<C-e>'] = cmp.mapping({
      	i = cmp.mapping.abort(),
      	c = cmp.mapping.close(),
    	}),
    	['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
  	},
  	sources = cmp.config.sources({
    	{ name = 'nvim_lsp' },
    	{ name = 'vsnip' }, -- For vsnip users.
    	-- { name = 'luasnip' }, -- For luasnip users.
    	-- { name = 'ultisnips' }, -- For ultisnips users.
    	-- { name = 'snippy' }, -- For snippy users.
  	}, {
    	{ name = 'buffer' },
  	})
	})

	-- Use buffer source for `/` (if you enabled `native_menu`, this won't work anymore).
	cmp.setup.cmdline('/', {
  	sources = {
    	{ name = 'buffer' }
  	}
	})

  cmp.setup.cmdline(':', {
    mapping = cmp.mapping.preset.cmdline(),
    sources = cmp.config.sources({
      { name = 'path' }
    }, {
      { name = 'cmdline' }
    })
  })
end


-- Setup lspconfig.
-- local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())

local servers = { 'rls', 'ccls', 'tsserver', 'pyright' }
for _, lsp in ipairs(servers) do
  nvim_lsp[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end

-- Formatters:
vim.cmd [[
  let g:neoformat_enabled_python = ["black"]
]]
