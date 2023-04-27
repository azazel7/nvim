local plugins = {
  {
    "phaazon/hop.nvim", --Modify to have a hop at the end of words
    cmd = { "HopWordAC", "HopWordBC" },
    config = function(_)
      require'hop'.setup {}
    end
  },
  {
    "azazel7/vim-tex-fold",
    ft = "tex",
    config = function(_)
      vim.g.tex_flavor = "latex"
      vim.g.tex_fold_ignore_envs = 0
      -- vim.g.tex_fold_additional_envs = ['subfigure']
    end
  },
  {
    "tmhedberg/SimpylFold",
    ft = "python"
  },
  -- { -- escape color sequence in files to print them with color in vim
    -- "vim-scripts/AnsiEsc.vim", lazy = false
  -- },
  {
    "chentoast/marks.nvim",
    lazy = false,
    config = function(_)
      require'marks'.setup {
        -- whether to map keybinds or not. default true
        default_mappings = true,
        -- which builtin marks to show. default {}
        builtin_marks = { ".", "<", ">", "^" },
        -- whether movements cycle back to the beginning/end of buffer. default true
        cyclic = true,
        -- whether the shada file is updated after modifying uppercase marks. default false
        force_write_shada = false,
        -- how often (in ms) to redraw signs/recompute mark positions. 
        -- higher values will have better performance but may cause visual lag, 
        -- while lower values may cause performance penalties. default 150.
        refresh_interval = 200,
        -- marks.nvim allows you to configure up to 10 bookmark groups, each with its own
        -- sign/virttext. Bookmarks can be used to group together positions and quickly move
        -- across multiple buffers. default sign is '!@#$%^&*()' (from 0 to 9), and
        -- default virt_text is "".
        bookmark_0 = {
          sign = "⚑",
          virt_text = "hello world",
          -- explicitly prompt for a virtual line annotation when setting a bookmark from this group.
          -- defaults to false.
          annotate = false,
        }
      }
    end

  },

  {
    "neovim/nvim-lspconfig",
    config = function(_)
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end
  },
  -- { --FIXME rust-tools fucks up the color in Rust files :-/.
  --   "simrat39/rust-tools.nvim",
  --   ft = "rust",
  --   config = function(_)
  --     require "custom.configs.rust-tools"
  --   end
  -- },
  {
    "EdenEast/nightfox.nvim"
  },
  {
    "dhruvasagar/vim-table-mode",
    cmd = { "TableModeToggle" },
    config = function(_)
      vim.g.table_mode_corner_corner='+'
      vim.g.table_mode_header_fillchar='-'
    end
  }
}
return plugins
