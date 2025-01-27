-- This Source Code Form is subject to the terms of the Mozilla Public
-- License, v. 2.0. If a copy of the MPL was not distributed with this
-- file, You can obtain one at https://mozilla.org/MPL/2.0/.

local status, lualine = pcall(require, "lualine")
if not status then
    vim.notify("Cannot find lualine")
    return
end

lualine.setup({
    options = {
        theme = "tokyonight",
        component_separators = {
            left = "|", right = "|" },
        -- https://github.com/ryanoasis/powerline-extra-symbols
        section_separators = {
            left = " ", right = "" },
    },
    extensions = { "nvim-tree", "toggleterm" },
    sections = {
        lualine_c = {
            "filename",
            {
                "lsp_progress",
                spinner_symbols = {
                    " ", " ", " ", " ", " ", " " },
            },
        },
        lualine_x = {
            "filesize",
            {
                "fileformat",
                symbols = {
                    unix = '', -- e712
                    dos = '', -- e70f
                    mac = '', -- e711
                },
            },
            "encoding",
            "filetype",
        },
        lualine_b = {
            {
                function()
                    return vim.g.remote_neovim_host and ("Remote: %s"):format(vim.uv.os_gethostname()) or ""
                end,
                padding = { right = 1, left = 1 },
                separator = { left = "", right = "" },
            },
        }
    },
})
