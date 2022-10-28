return {
  name = "Latex build",
  builder = function()
    -- Full path to current file (see :help expand())
    local file = vim.fn.expand("%:p")
    return {
      cmd = { "xelatex" },
      args = { "-interaction=nonstopmode", "-synctex=-1", file },
      components = { { "on_output_quickfix", open = true }, "default" },
    }
  end,
  condition = {
    filetype = { "tex" },
  },
}
