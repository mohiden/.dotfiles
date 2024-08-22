local M = {
  "ThePrimeagen/harpoon",
  event = "VeryLazy",
  dependencies = {
    { "nvim-lua/plenary.nvim" },
  },
}

function M.config()
  local keymap = vim.keymap
  local opts = { noremap = true, silent = true }

  -- require "harpoon".setup({
  --   menu = {
  --     width = 80
  --   }
  -- })
  require("harpoon").setup({
    menu = {
      width = vim.api.nvim_win_get_width(0) - 10,
    },
    settings = {
      global_settings = {
        -- save_on_toggle = false,
        -- save_on_change = false,
        -- hide_filename = false,
        -- start_in_insert = false,
        -- term_open_cmd = "tabedit",
      },
    },
  })

  keymap.set("n", "<leader>ha", "<cmd>lua require('mohiden.plugins.harpoon').mark_file()<cr>", opts)
  keymap.set("n", "<leader>hh", require("harpoon.ui").toggle_quick_menu, opts)
  keymap.set("n", "<leader>h1", function()
    require("harpoon.ui").nav_file(1)
  end, opts)
  keymap.set("n", "<leader>h2", function()
    require("harpoon.ui").nav_file(2)
  end, opts)
  keymap.set("n", "<leader>h3", function()
    require("harpoon.ui").nav_file(3)
  end, opts)
  keymap.set("n", "<leader>h4", function()
    require("harpoon.ui").nav_file(4)
  end, opts)
  keymap.set("n", "<leader>h5", function()
    require("harpoon.ui").nav_file(5)
  end, opts)
  keymap.set("n", "<leader>h6", function()
    require("harpoon.ui").nav_file(6)
  end, opts)
  keymap.set("n", "<leader>h7", function()
    require("harpoon.ui").nav_file(7)
  end, opts)
  keymap.set("n", "<leader>h8", function()
    require("harpoon.ui").nav_file(8)
  end, opts)
  keymap.set("n", "<leader>h9", function()
    require("harpoon.ui").nav_file(9)
  end, opts)
end

function M.mark_file()
  require("harpoon.mark").add_file()
  vim.notify("󱡅  marked file")
end

return M
