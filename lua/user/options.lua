lvim.format_on_save.enabled = true
lvim.colorscheme = "oxocarbon"

vim.opt.relativenumber = true
vim.opt.autowrite = true

lvim.builtin.nvimtree.active = false

lvim.builtin.which_key.mappings["S"] = {
  name = "Session",
  c = { "<cmd>lua require('persistence').load()<cr>", "Restore last session for current dir" },
  l = { "<cmd>lua require('persistence').load({ last = true })<cr>", "Restore last session" },
};
