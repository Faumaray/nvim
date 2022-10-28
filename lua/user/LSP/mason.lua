local lsp = require("user.LSP.config")

require("mason").setup()


local servers = {
    "sumneko_lua", "rust_analyzer", "clangd",
    "omnisharp", "cmake", "cssls",
    "dockerls", "gopls", "html",
    "jsonls", "zk", "pylsp",
    "taplo", "tsserver", "texlab", "jdtls"
}

local debuggers = {
    "codelldb", "debugpy", "delve", "netcoredbg"
}

local formatters = {
    "csharpier",
    "fixjson",
    "eslint_d"
}

require("mason-lspconfig").setup({
    ensure_installed = servers,
    automatic_installation = true,
})

require('mason-null-ls').setup {
    null_ls_sources = formatters,

    -- Default: false
    auto_update = true,

    automatic_installation = true
}
--require("mason-null-ls").check_install()
require('mason-tool-installer').setup {

    -- a list of all tools you want to ensure are installed upon
    -- start; they should be the names Mason uses for each tool
    ensure_installed = debuggers,

    -- if set to true this will check each tool for updates. If updates
    -- are available the tool will be updated. This setting does not
    -- affect :MasonToolsUpdate or :MasonToolsInstall.
    -- Default: false
    auto_update = true,

    -- automatically install / update on startup. If set to false nothing
    -- will happen on startup. You can use :MasonToolsInstall or
    -- :MasonToolsUpdate to install tools and check for updates.
    -- Default: true
    run_on_start = true,
}

require("mason-lspconfig").setup_handlers {
    function(server_name) -- default handler (optional)
        -- local coq = require("coq")
        local server_config = vim.tbl_extend("error", lsp.servers[server_name], {
            flags = lsp.flags,
            on_attach = lsp.on_attach,
            capabilities = lsp.capabilities
        })
        require("lspconfig")[server_name].setup(server_config)
    end,
}
