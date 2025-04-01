return {
    "windwp/nvim-autopairs",
    event = "InsertEnter", -- Load only when entering insert mode
    opts = {
        disable_filetype = { "TelescopePrompt", "vim" }, -- Skip in these filetypes
        check_ts = true, -- Use Treesitter for smarter pairing (since you have nvim-treesitter)
        -- fast_wrap = { -- Optional: Quick wrap selected text with pairs (e.g., Ctrl-e)
        --     map = "<C-e>",
        --     chars = { "{", "[", "(", '"', "'" },
        -- },
    },
    config = function(_, opts)
        local autopairs = require("nvim-autopairs")
        autopairs.setup(opts)

        -- Integrate with blink.cmp
        local cmp_autopairs = require("nvim-autopairs.completion.cmp")
        require("blink.cmp").event:on("confirm_done", cmp_autopairs.on_confirm_done())
    end,
}
