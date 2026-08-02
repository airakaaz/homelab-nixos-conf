require("mini.icons").setup()

require("mini.pairs").setup()

require("mini.surround").setup({
  mappings = {
    add = "gsa",
    delete = "gsd",
    replace = "gsr",

    find = "gsf",
    find_left = "gsF",
    highlight = "",
    update_n_lines = "",

    suffix_last = "[",
    suffix_next = "]",
  },
})

local ai = require("mini.ai")
ai.setup({
  custom_textobjects = {
    f = ai.gen_spec.treesitter({ a = "@function.outer", i = "@function.inner" }),
    c = ai.gen_spec.treesitter({ a = "@class.outer", i = "@class.inner" }),
    o = ai.gen_spec.treesitter({
      a = { "@conditional.outer", "@loop.outer" },
      i = { "@conditional.inner", "@loop.inner" },
    }),
  },
})

require("mini.move").setup({
  mappings = {
    left = "<A-h>",
    right = "<A-l>",
    down = "<A-j>",
    up = "<A-k>",

    line_left = "<A-h>",
    line_right = "<A-l>",
    line_down = "<A-j>",
    line_up = "<A-k>",
  },
})

local hipatterns = require("mini.hipatterns")
hipatterns.setup({
  highlighters = {
    fixme = { pattern = "%f[%w]()FIXME()%f[%W]", group = "MiniHipatternsFixme" },
    hack  = { pattern = "%f[%w]()HACK()%f[%W]",  group = "MiniHipatternsHack" },
    todo  = { pattern = "%f[%w]()TODO()%f[%W]",  group = "MiniHipatternsTodo" },
    note  = { pattern = "%f[%w]()NOTE()%f[%W]",  group = "MiniHipatternsNote" },

    hex_color = hipatterns.gen_highlighter.hex_color(),
  },
})
