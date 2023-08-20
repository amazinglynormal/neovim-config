require("formatter").setup{
    logging = true,

    filetype = {
        css = {
            require("formatter.filetypes.css").prettier
        },

        html = {
            require("formatter.filetypes.html").prettier
        },

        javascript = {
            require("formatter.filetypes.javascript").prettier
        },

        javascriptreact = {
            require("formatter.filetypes.javascriptreact").prettier
        },

        json = {
            require("formatter.filetypes.json").prettier
        },

        python = {
            require("formatter.filetypes.python").black
        },

        typescript = {
            require("formatter.filetypes.typescript").prettier
        },

        typescriptreact = {
            require("formatter.filetypes.typescriptreact").prettier
        }
    }
}

vim.api.nvim_create_autocmd("BufWritePost", {
    command = ":FormatWrite"
})

