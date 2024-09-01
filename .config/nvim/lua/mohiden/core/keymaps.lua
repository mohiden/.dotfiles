-- set leader key to space
vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

---------------------
-- General Keymaps -------------------

-- use jk to exit insert mode
keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })

-- clear search highlights
keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })


keymap.set("n", "<leader>ww", ":w<CR>", { desc = "Saves file" })
keymap.set("n", "<leader>qq", ":q<CR>", { desc = "Exit file" })

-- delete single character without copying into register
keymap.set("n", "x", '"_x')

keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" }) -- open new tab
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" }) -- close current tab
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" }) --  go to next tab
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" }) --  go to previous tab
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" }) --  move current buffer to new tab

-- qflist
-- keymap.set("n", "<leader>qo", "<cmd>copen<CR>", { desc = "Open quickfix list" }) -- open quickfix list
keymap.set("n", "<leader>qc", "<cmd>cclose<CR>", { desc = "Close quickfix list" }) -- close quickfix list
keymap.set("n", "<leader>j", "<cmd>cnext<CR>", { desc = "Go to next quickfix item" }) -- go to next quickfix item
keymap.set("n", "<leader>k", "<cmd>cprev<CR>", { desc = "Go to previous quickfix item" }) -- go to previous quickfix item
keymap.set("n", "<leader>qf", "<cmd>cfirst<CR>", { desc = "Go to first quickfix item" }) -- go to first quickfix item
keymap.set("n", "<leader>ql", "<cmd>clast<CR>", { desc = "Go to last quickfix item" }) -- go to last quickfix item
keymap.set("n", "<leader>qo", "<cmd>copen<CR>", { desc = "Open quickfix list" }) -- open quickfix list
keymap.set("n", "<leader>qf", "<cmd>cc<CR>", { desc = "Clear quickfix list" }) -- clear quickfix list
-- toggle quickfix list
keymap.set("n", "<leader>qt", function()
  if vim.fn.empty(vim.fn.getqflist()) == 0 then
    vim.cmd("cclose")
  else
    vim.cmd("copen")
  end
end, { desc = "Toggle quickfix list" })

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
