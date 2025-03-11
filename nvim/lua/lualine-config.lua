require('lualine').setup {
  options = {
    theme = 'auto',
    component_separators = { left = '', right = ''},
    section_separators = { left = '', right = ''},
  },
  sections = {
    lualine_a = {},
    lualine_b = {{'filename', path = 1}},
    lualine_c = {},
    lualine_x = {'diagnostics', 'branch', 'progress', 'location'},
    lualine_y = {},
    lualine_z = {}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
}
