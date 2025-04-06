return {
    "oonamo/ef-themes.nvim",
    lazy = false,
    priority = 1000,
    config = function()
        require("ef-themes").setup({
            dark = "ef-autumn",
            -- dark = "ef-elea-dark",
            -- dark = "ef-owl",
            -- dark = "ef-bio",
            transparent = false,
            styles = {
                comments = { italic = false },
            },
        })
        -- vim.o.background = "dark" -- or "light" for light mode
        vim.cmd([[colorscheme ef-theme]])
    end,
}

-- return {
-- 	"rebelot/kanagawa.nvim",
-- 	config=function()
-- 		require('kanagawa').setup({
-- 			compile=true,
-- 			transparent=true,
-- 		});
-- 		vim.cmd("colorscheme kanagawa");
-- 	end,
-- 	build = function()
-- 		vim.cmd("KanagawaCompile");
-- 	end,
-- }
