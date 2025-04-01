return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    lazy = true, -- Load only when triggered
    keys = {
        { "<leader>e", "<cmd>Neotree toggle<CR>", desc = "Toggle Neo-tree" },
    },
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons", -- Optional for icons
        "MunifTanjim/nui.nvim",
    },
    opts = {
        close_if_last_window = true, -- Close if it’s the last window
        filesystem = {
            follow_current_file = { enabled = true }, -- Sync with current buffer
            use_libuv_file_watcher = true, -- Faster file system updates
            filtered_items = { visible = true, hide_dotfiles = false }, -- Show hidden files
        },
        window = {
            position = "left", -- Sidebar on the left
            width = 30,
        },
        event_handlers = {
            { -- Auto-close on file open
                event = "file_opened",
                handler = function()
                    require("neo-tree.command").execute({ action = "close" })
                end,
            },
        },
    },
}
