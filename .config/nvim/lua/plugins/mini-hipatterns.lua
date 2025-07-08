return {
  "echasnovski/mini.hipatterns",
  version = false, -- or use a specific version like "*"
  config = function()
    require("mini.hipatterns").setup({
      highlighters = {
        hex_color = require("mini.hipatterns").gen_highlighter.hex_color(),
      },
    })
  end,
}
