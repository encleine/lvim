return function(event, pattern, callback)
  vim.api.nvim_create_autocmd(
    event,
    {
      pattern = pattern,
      group = vim.api.nvim_create_augroup("auto", { clear = true }),
      callback = callback
    }
  )
end
