local map = function(mode, lhs, rhs, desc, opts)
  opts = opts or {}
  opts.desc = desc
  vim.keymap.set(mode, lhs, rhs, opts)
end

vim.api.nvim_create_autocmd("LspAttach", {
  callback = function(event)
    local opts = { buffer = event.buf, silent = true, }

    map("n", "K", function() vim.lsp.buf.hover() end, "Hover", opts)

    map("n", "<leader>cr", function() vim.lsp.buf.rename() end, "Rename", opts)
    map("n", "<leader>ca", function() vim.lsp.buf.code_action() end, "Code actions", opts)
    map("n", "<leader>cf", function() vim.lsp.buf.format() end, "Format", opts)

    map("n", "gd", function() Snacks.picker.lsp_definitions() end, "Goto Definition", opts)
    map("n", "gD", function() Snacks.picker.lsp_declarations() end, "Goto Declaration", opts)
    map("n", "gr", function() Snacks.picker.lsp_references() end, "References", opts)     -- nowait = true,
    map("n", "gI", function() Snacks.picker.lsp_implementations() end, "Goto Implementation", opts)
    map("n", "gy", function() Snacks.picker.lsp_type_definitions() end, "Goto Type Definition", opts)
    map("n", "gai", function() Snacks.picker.lsp_incoming_calls() end, "Incoming Calls", opts)
    map("n", "gao", function() Snacks.picker.lsp_outgoing_calls() end, "Outgoing Calls", opts)

    map("n", "<leader>ss", function() Snacks.picker.lsp_symbols() end, "LSP Symbols", opts)
    map("n", "<leader>sS", function() Snacks.picker.lsp_workspace_symbols() end, "Workspace Symbols", opts)
  end,
})
