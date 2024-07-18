return {
  'folke/tokyonight.nvim',
  priority = 1000,
  config = function()
    local fg_gutter = '#627E97'
    -- {
    --
    --   'folke/tokyonight.nvim',
    --   priority = 1000,
    --   init = function()
    --     vim.cmd.colorscheme 'tokyonight-moon'
    --     vim.cmd.hi 'Comment gui=none'
    --   end,
    -- },
    require('tokyonight').setup {
      style = 'moon',
      on_colors = function(colors)
        colors.fg_gutter = fg_gutter
      end,
    }

    vim.cmd.hi 'Comment gui=none'
    vim.cmd 'colorscheme tokyonight-moon'
  end,
}
