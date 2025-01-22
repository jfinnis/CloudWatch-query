local M = {}

M.config = function() end

M.setup = function()
    vim.filetype.add({
        extension = {
            cwl = 'CWQueryLang'
        }
    })
end

return M
