require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

-- map("n", ";", ":", { desc = "CMD enter command mode" })
map({ "n", "v" }, "j", "gj")
map({ "n", "v" }, "k", "gk")

map("i", "jk", "<ESC>")
map("i", "kj", "<ESC>")

map("v", "<", "<gv")
map("v", ">", ">gv")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

map("n", "<leader>tt", function()
  require("base46").toggle_transparency()
end)

map("n", "s", function()
  require("leap").leap { target_windows = { vim.api.nvim_get_current_win() } }
end)
map("n", "S", "<Plug>(leap-from-window)")
map({ "x", "o" }, "s", "<Plug>(leap-forward)")
map({ "x", "o" }, "S", "<Plug>(leap-backward)")

map("n", "<leader>fw", function()
  require("telescope.builtin").live_grep {
    additional_args = function()
      return { "--hidden", "--glob", "!**/.git/*" }
    end,
  }
end, { desc = "telescope live grep" })
