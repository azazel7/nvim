local M = {}
M.abc = {
  n = {
     -- ["<leader><leader>w"] = {"<cmd><Plug>(easymotion)", "Telescope"},
     ["gp"] = {"`[v`]", "Select Pasted Text"},
     ["<F9>"] = {"<cmd> set invpaste paste?<CR>", "Switch to Paste Mode"},
  },

  i = {
     ["<F9>"] = {"<cmd> set invpaste paste?<CR>", "Switch to Paste Mode"},
  }
}
M.hop = {
  n = {
     -- ["<leader><leader>w"] = {"<cmd><Plug>(easymotion)", "Telescope"},
     ["<leader><leader>w"] = {"<cmd> HopWordAC <CR>", "EasyMotion W"},
     ["<leader><leader>b"] = {"<cmd> HopWordBC <CR>", "EasyMotion B"}
  },
}
M.Rust = {
  n = {
     ["<leader>w"] = {"<cmd> lua vim.lsp.buf.format()<CR><cmd>w<CR>", "Format Rust Source"},
  },
}
M.useless = {
  n = {
     -- ["<leader><leader>w"] = {"<cmd><Plug>(easymotion)", "Telescope"},
     ["è"] = {"`", ""},
     ["é"] = {"~", ""},
     ["à"] = {"@", ""},
  },
}
M.disabled = {
  n = {
      ["q:"] = "",
      ["Q"] = "",
  }
}
return M
