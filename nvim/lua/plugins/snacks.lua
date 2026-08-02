local Snacks = require("snacks")

Snacks.setup({
  dashboard = { enabled = false },
  bigfile = { enabled = true },
  explorer = { enabled = true },
  indent = { enabled = true },
  input = { enabled = true },
  picker = { enabled = true, },
  quickfile = { enabled = true, },
  scope = { enabled = true, },
  scroll = { enabled = true, },
  statuscolumn = { enabled = true, },
  words = { enabled = true, },
  notifier = {
    enabled = true,
    timeout = 3000,
  },
})
