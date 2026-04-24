return {
    {
        "bjarneo/aether.nvim",
        name = "aether",
        priority = 1000,
        opts = {
            disable_italics = false,
            colors = {
                -- Monotone shades (base00-base07)
                base00 = "#0b0d11", -- Default background
                base01 = "#4a5d46", -- Lighter background (status bars)
                base02 = "#0b0d11", -- Selection background
                base03 = "#4a5d46", -- Comments, invisibles
                base04 = "#d8c6cc", -- Dark foreground
                base05 = "#f0b7ca", -- Default foreground
                base06 = "#ffd0dc", -- Light foreground
                base07 = "#fff1f6", -- Light background

                -- Accent colors (base08-base0F)
                base08 = "#f23888", -- Variables, errors, red
                base09 = "#ff6aa7", -- Integers, constants, orange
                base0A = "#d7be96", -- Classes, types, yellow
                base0B = "#5aa15d", -- Strings, green
                base0C = "#6f9485", -- Support, regex, cyan
                base0D = "#67dd82", -- Functions, keywords, blue
                base0E = "#f0b7ca", -- Keywords, storage, magenta
                base0F = "#e6d3b4", -- Deprecated, brown/yellow
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
