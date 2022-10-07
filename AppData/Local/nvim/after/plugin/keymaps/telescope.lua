local nnoremap = require("denco.keymap").nnoremap

nnoremap("<leader>n", "<cmd>lua require('telescope.builtin').find_files()<CR>")
nnoremap("<leader>m", "<cmd>lua require('telescope.builtin').lsp_document_symbols()<CR>")
nnoremap("<leader>f", "<cmd>lua require('telescope.builtin').live_grep()<CR>")

nnoremap("gu", "<cmd>lua require('telescope.builtin').lsp_references()<CR>")
nnoremap("gd", "<cmd>lua require('denco.utils').go_to_definition()<CR>")
nnoremap("gi", "<cmd>lua require('telescope.builtin').lsp_implementations()<CR>")
nnoremap("grr", "<cmd>lua vim.lsp.codelens.refresh()<CR>")
