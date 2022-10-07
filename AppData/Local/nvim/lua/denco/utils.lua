local M = {}

function M.go_to_definition()
    if vim.bo.filetype == "cs" then
        vim.cmd("lua require('omnisharp_extended').telescope_lsp_definitions()")
    else
        vim.cmd("lua require('telescope.builtin').lsp_definitions()")
    end
end

return M
