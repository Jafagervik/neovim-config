vim.g.mapleader = " "

local km = vim.keymap

km.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })

km.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })

km.set("n", "<leader>+", "<C-a>", { desc = "Inc number" })
km.set("n", "<leader>-", "<C-x>", { desc = "Dec number" })

km.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vert" })
km.set("n", "<leader>sh", "<C-w>s", { desc = "Split window hor" })
km.set("n", "<leader>se", "<C-w>=", { desc = "Equal window split" })
km.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" })

-- keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" })
-- keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" })
-- keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Goto next tab" })
-- keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Goto prev tab" })
-- keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" })
--
--keymap.set("n", "<leader>e", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle FE" })

km.set("n", "<leader>la", "<cmd>Lazy<CR>")
km.set("n", "<leader>ma", "<cmd>Mason<CR>")

-- My custom ones

km.set("v", "J", ":m '>+1<CR>gv=gv")
km.set("v", "K", ":m '<-2<CR>gv=gv")

km.set("n", "J", "mzJ`z")
km.set("n", "<C-d>", "<C-d>zz")
km.set("n", "<C-u>", "<C-u>zz")
km.set("n", "n", "nzzzv")
km.set("n", "N", "Nzzzv")

-- save
km.set("n", "<C-s>", ":w<CR>")
km.set("v", "<C-s>", "<Esc>:w<CR>")
km.set("i", "<C-s>", "<Esc>:w<CR>")

-- greatest remap ever
km.set("x", "<leader>p", [["_dP]])

-- next greatest remap ever : asbjornHaland
km.set({ "n", "v" }, "<leader>y", [["+y]])
km.set("n", "<leader>Y", [["+Y]])

km.set({ "n", "v" }, "<leader>pp", [["_d]])

-- This is going to get me cancelled
-- keymap.set("i", "<C-c>", "<Esc>")

km.set("n", "Q", "<nop>")
km.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")

-- reload
km.set("n", "<leader>rel", function()
    vim.cmd("so")
end)

vim.keymap.set("n", "<leader>cf", function()
    require("conform").format({
        lsp_format = "fallback",
    })
end, { desc = "Format current file" })
