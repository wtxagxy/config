require("nvim-tree").setup({

    -- sort_by = function(nodes)
    --   table.sort(nodes, function(a, b)
    --     return #a.name < #b.name
    --   end)
    -- end,
    -- sort_by = "case_sensitive",
    sort_by = "name",
    view = {
        adaptive_size = true,
        mappings = {
            list = {
                { key = "u", action = "dir_up" },
            },
        },
    },
    renderer = {
        group_empty = true,
    },
    filters = {
        dotfiles = true,
    },
})
