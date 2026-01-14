local ls = require 'luasnip'
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local rep = require('luasnip.extras').rep

return {
  s('logic', {
    t 'logic [',
    i(1, '0'),
    t ':0] ',
    i(2, 'signal'),
    t ';',
  }),

  s('DUT', {
    i(1, 'module_name'),
    t { ' DUT(', '' },
    t { '    .*', '' },
    t ');',
  }),

  s('.sig', {
    t '.',
    i(1, 'signal'),
    t '(',
    rep(1),
    t '),',
  }),
}
