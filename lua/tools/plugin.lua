-- This Source Code Form is subject to the terms of the Mozilla Public
-- License, v. 2.0. If a copy of the MPL was not distributed with this
-- file, You can obtain one at https://mozilla.org/MPL/2.0/.

return {
    {
        "kyazdani42/nvim-tree.lua",
        dependencies = {
            "kyazdani42/nvim-web-devicons",
        },
    },
    {
        "nvim-telescope/telescope.nvim",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "gbrlsnchs/telescope-lsp-handlers.nvim"
        },
    },
    {
        "folke/which-key.nvim",
        event = "VeryLazy",
        init = function()
            vim.o.timeout = true
            vim.o.timeoutlen = 300
        end,
        opt = {},
    },
    {
        "ahmedkhalf/project.nvim",
    },
    {
        "akinsho/toggleterm.nvim",
        version = "*",
        config = true,
    },
    {
        "numToStr/FTerm.nvim",
    },
    {
        'VonHeikemen/searchbox.nvim',
        dependencies = {
            'MunifTanjim/nui.nvim'
        }
    },
    {
        'VonHeikemen/fine-cmdline.nvim',
        dependencies = {
            'MunifTanjim/nui.nvim'
        }
    },

    {
        "NeogitOrg/neogit",
        dependencies = {
            "nvim-lua/plenary.nvim",  -- required
            "sindrets/diffview.nvim", -- optional - Diff integration

            -- Only one of these is needed, not both.
            "nvim-telescope/telescope.nvim", -- optional
            "ibhagwan/fzf-lua",              -- optional
        },
    },
    {
        'adelarsq/image_preview.nvim',
        event = 'VeryLazy',
        config = function()
            require("image_preview").setup()
        end
    },
    {
        "amitds1997/remote-nvim.nvim",
        dependencies = {
            "nvim-lua/plenary.nvim",         -- For standard functions
            "MunifTanjim/nui.nvim",          -- To build the plugin UI
            "nvim-telescope/telescope.nvim", -- For picking b/w different remote methods
        },
        config = true
    },
    {
        "brenton-leighton/multiple-cursors.nvim",
        version = "*", -- Use the latest tagged version
        opts = {},     -- This causes the plugin setup function to be called
        keys = {
            { "<C-j>",         "<Cmd>MultipleCursorsAddDown<CR>",        mode = { "n", "x" },      desc = "Add cursor and move down" },
            { "<C-k>",         "<Cmd>MultipleCursorsAddUp<CR>",          mode = { "n", "x" },      desc = "Add cursor and move up" },

            { "<C-Up>",        "<Cmd>MultipleCursorsAddUp<CR>",          mode = { "n", "i", "x" }, desc = "Add cursor and move up" },
            { "<C-Down>",      "<Cmd>MultipleCursorsAddDown<CR>",        mode = { "n", "i", "x" }, desc = "Add cursor and move down" },

            { "<C-LeftMouse>", "<Cmd>MultipleCursorsMouseAddDelete<CR>", mode = { "n", "i" },      desc = "Add or remove cursor" },

        },
    },
}
