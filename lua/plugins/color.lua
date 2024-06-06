return {
    "edmondburnett/leeward.nvim",
    lazy = false,
    priority = 1000,
    opts = {
        theme = "dark",
    },
    config = function()
        require("leeward").setup()
        require("leeward").load()
    end
}

