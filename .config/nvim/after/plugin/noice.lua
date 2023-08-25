require("noice").setup({
    cmdline = {
        format = {
            cmdline = { icon = ">" },
            search_down = { icon = "🔍⌄" },
            search_up = { icon = "🔍⌃" },
            filter = { icon = "$" },
            lua = { icon = "☾" },
            help = { icon = "?" },
        },
    },
    format = {
        level = {
            icons = {
                error = "✖",
                warn = "▼",
                info = "●",
            },
        },
    },
    messages = {
        enabled = true,
    },
    popupmenu = {
        kind_icons = true,
    },
    inc_rename = {
        cmdline = {
            format = {
                IncRename = { icon = "⟳" }
            },
        },
    },
    presets = {
        lsp_doc_border = true,
        inc_rename = false,
        command_palette = true,
        bottom_search = true,
        long_message_to_split = true,
    }
})
