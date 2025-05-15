return {
  'rebelot/kanagawa.nvim',
  lazy = false, -- make sure we load this during startup if it is your main colorscheme
  priority = 1000, -- make sure to load this before all the other start plugins
  config = function()
    -- load the colorscheme here
    require('kanagawa').setup {
      compile = false, -- enable compiling the colorscheme
      undercurl = true, -- enable undercurls
      commentStyle = { italic = true },
      functionStyle = {},
      keywordStyle = { italic = true },
      statementStyle = { bold = true },
      typeStyle = {},
      transparent = true, -- do not set background color
      dimInactive = false, -- dim inactive window `:h hl-NormalNC`
      terminalColors = false, -- define vim.g.terminal_color_{0,17}
      colors = { -- add/modify theme and palette colors
        palette = {},
        theme = { wave = {}, lotus = {}, dragon = {}, all = { ui = { bg_gutter = 'none' } } },
      },
      overrides = function(colors) -- add/modify highlights
        return {}
      end,
      theme = 'wave', -- Load "wave" theme
      background = { -- map the value of 'background' option to a theme
        dark = 'wave', -- try "dragon" !
        light = 'lotus',
      },
    }
    vim.cmd [[colorscheme kanagawa]]

    -- vim.api.nvim_set_hl(0, 'LineNr', { fg = 'yellow' })
    -- vim.api.nvim_set_hl(0, 'LineNrAbove', { fg = 'blue' })
    -- vim.api.nvim_set_hl(0, 'LineNrBelow', { fg = 'magenta' })
  end,
}
