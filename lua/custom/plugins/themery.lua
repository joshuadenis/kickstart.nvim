return {
  'zaldih/themery.nvim',
  lazy = false,
  config = function()
    require('themery').setup {
      themes = {
        'kanagawa-wave',
        'kanagawa-lotus',
      },
      livePreview = true,
    }
  end,
}
