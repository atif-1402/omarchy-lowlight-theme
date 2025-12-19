return {
    {
        "bjarneo/aether.nvim",
        name = "aether",
        priority = 1000,
        opts = {
            disable_italics = false,
            colors = {
                -- Monotone shades (base00-base07)
                base00 = "#292323", -- Default background
                base01 = "#877878", -- Lighter background (status bars)
                base02 = "#292323", -- Selection background
                base03 = "#877878", -- Comments, invisibles
                base04 = "#dcd7d6", -- Dark foreground
                base05 = "#dcd7d6", -- Default foreground
                base06 = "#dcd7d6", -- Light foreground
                base07 = "#dcd7d6", -- Light background

                -- Accent colors (base08-base0F)
                base08 = "#a48484", -- Variables, errors, red
                base09 = "#ccb8b8", -- Integers, constants, orange
                base0A = "#a88373", -- Classes, types, yellow
                base0B = "#af8a79", -- Strings, green
                base0C = "#b0b7c5", -- Support, regex, cyan
                base0D = "#a39eb8", -- Functions, keywords, blue
                base0E = "#bea7bd", -- Keywords, storage, magenta
                base0F = "#bd9c8f", -- Deprecated, brown/yellow
            },
        },
        config = function(_, opts)
            require("aether").setup(opts)
            vim.cmd.colorscheme("aether")

            -- Enable hot reload
            require("aether.hotreload").setup()
        end,
    },
    {
        "LazyVim/LazyVim",
        opts = {
            colorscheme = "aether",
        },
    },
}
