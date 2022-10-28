require('overseer').setup({
  templates = { "builtin", "user.latex_build" },
  dap = false,
})

require('neotest').setup({
  consumers = {
    overseer = require("neotest.consumers.overseer"),
  },
  overseer = {
    enabled = true,
    -- When this is true (the default), it will replace all neotest.run.* commands
    force_default = false,
  },
})
