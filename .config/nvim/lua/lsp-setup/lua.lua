local nvim_lsp = require'nvim_lsp'
nvim_lsp.clangd.setup{
	filtypes = { "c", "h", "cpp", "hpp", "cc", "hh" },
	completion = { detailedLabel = true }
}
--nvim_lsp.ccls.setup{}
