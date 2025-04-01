return {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    opts = {
        disable_filetype = { "TelescopePrompt", "vim" }, -- Skip in these filetypes
        check_ts = true, -- Use Treesitter for smarter pairing
        -- fast_wrap = { -- Optional: Quick wrap selected text with pairs (e.g., Ctrl-e)
        --     map = "<C-e>",
        --     chars = { "{", "[", "(", '"', "'" },
        -- },
    },
    config = function(_, opts)
        local autopairs = require("nvim-autopairs")
        autopairs.setup(opts)
    end,
}
