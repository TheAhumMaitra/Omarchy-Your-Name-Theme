return {
    {
        "bjarneo/aether.nvim",
        name = "aether",
        priority = 1000,
        opts = {
            disable_italics = false,
            colors = {
                -- Monotone shades (base00-base07)
                base00 = "#070C13", -- Default background
                base01 = "#313e4f", -- Lighter background (status bars)
                base02 = "#070C13", -- Selection background
                base03 = "#313e4f", -- Comments, invisibles
                base04 = "#C9EDF2", -- Dark foreground
                base05 = "#ffffff", -- Default foreground
                base06 = "#ffffff", -- Light foreground
                base07 = "#C9EDF2", -- Light background

                -- Accent colors (base08-base0F)
                base08 = "#a17bad", -- Variables, errors, red
                base09 = "#cab2d2", -- Integers, constants, orange
                base0A = "#6AD7EB", -- Classes, types, yellow
                base0B = "#49dcee", -- Strings, green
                base0C = "#7cdff8", -- Support, regex, cyan
                base0D = "#7a7edc", -- Functions, keywords, blue
                base0E = "#b5a9bc", -- Keywords, storage, magenta
                base0F = "#b8eff9", -- Deprecated, brown/yellow
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
