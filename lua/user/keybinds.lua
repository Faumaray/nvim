local Hydra = require('hydra')
local cmd, key, opts = require('utils').eval, require('utils').keymap, require('utils').opts
-- TOOO: Keaymap and Hydra
Hydra({
   name = 'Telescope',
   mode = 'n',
   body = 'z',
   heads = {
      { 'h', '5zh' },
      { 'l', '5zl', { desc = '←/→' } },
      { 'H', 'zH' },
      { 'L', 'zL', { desc = 'half screen ←/→' } },
   }
})



key('n', '<leader>sv', -- vertical split
   cmd("vsplit"),
   opts)

key('n', '<leader>sh', -- horizontal split
   cmd("split"),
   opts)

key('n', '<leader>w', -- save the current session
   cmd("w"),
   opts)
key('n', '<leader>Q', -- save and exit
   cmd("q"),
   opts)
key('n', '<leader>wQ', -- save and exit
   cmd("wq"),
   opts)
key('n', '<leader>q', -- save and exit
   cmd("Bdelete!"),
   opts)
key('n', '<leader>wq', -- save and exit
   cmd("w|Bdelete"),
   opts)
-- Move between windows
key('n', '<C-h>', '<C-w>h', opts)
key('n', '<C-j>', '<C-w>j', opts)
key('n', '<C-k>', '<C-w>k', opts)
key('n', '<C-l>', '<C-w>l', opts)
key('n', '<leader>og', cmd('Neogit'), opts)
key('n', '<leader>ff', cmd("Telescope find_files hidden=true"), opts)
key('n', '<leader>fg', cmd("Telescope live_grep hidden=true"), opts)
key('n', '<leader>pb', cmd("PBToggleBreakpoint"), opts)
key('n', '<leader>ds', cmd("DapContinue"), opts)
key('n', '<leader>si', cmd("DapStepInto"), opts)
key('n', '<leader>so', cmd("DapStepOver"), opts)
key("n", '<leader>nd', ":lua require('neogen').generate()<CR>", opts)
key("n", "<leader>fb", cmd("Telescope file_browser hidden=true"), opts)
key("n", "<leader>fp", cmd("Telescope projects"), opts)
key("v", "<Tab>", ">", opts)
key("v", "<S-Tab>", "<", opts)
