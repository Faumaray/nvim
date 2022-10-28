require("penvim").setup() -- use defaults
require('crates').setup {
    -- src = {
    --     coq = {
    --         enabled = true,
    --     },
    -- },
    null_ls = {
        enabled = true,
    },
}
require("neogit").setup {
    use_magit_keybindings = true,
    integrations = {
        diffview = true
    }
}
require('neogen').setup({ snippet_engine = "luasnip" })
require('Comment').setup()
require('leap').set_default_keymaps()

require("project_nvim").setup({})
