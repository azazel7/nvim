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
     ["<leader><leader>w"] = {"<cmd> HopWordAC <CR>", "EasyMotion w"},
     ["<leader><leader>b"] = {"<cmd> HopWordBC <CR>", "EasyMotion b"},
     ["<leader><leader>W"] = {"<cmd> HopWORDAC <CR>", "EasyMotion W"},
     ["<leader><leader>B"] = {"<cmd> HopWORDBC <CR>", "EasyMotion B"},
     ["<leader><leader>e"] = {"<cmd> HopEndWordAC <CR>", "EasyMotion e"},
     ["<leader><leader>ge"] = {"<cmd> HopEndWordBC <CR>", "EasyMotion ge"},
     ["<leader><leader>E"] = {"<cmd> HopEndWORDAC <CR>", "EasyMotion E"},
     ["<leader><leader>gE"] = {"<cmd> HopEndWORDBC <CR>", "EasyMotion gE"},
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
     ["è"] = {"`", "Get to a mark"},
     ["é"] = {"~", "Toggle Case"},
     ["à"] = {"@", "Replay macro"},
  },
}
M.disabled = {
  n = {
      ["q:"] = "",
      ["Q"] = "",
  }
}
return M
