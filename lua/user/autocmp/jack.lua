local auto = require("user.autocmp.auto")

auto("BufWritePost", "*.jack",
  function()
    local path = vim.api.nvim_buf_get_name(0)

    vim.fn.jobstart({ "jackCompiler", path }, { stdout_buffered = true })

    io.write(string.format("compiled: %s ", path:match("[^\\]*.jack$")))
  end
)
