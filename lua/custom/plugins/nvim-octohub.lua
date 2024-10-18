return {
    '2kabhishek/octohub.nvim',
    cmd = {
        'OctoRepos',
        'OctoRepo',
        'OctoStats',
        'OctoActivityStats',
        'OctoContributionStats',
        'OctoRepoStats',
        'OctoProfile',
        'OctoRepoWeb',
    },
    keys = {
        '<leader>goa',
        '<leader>goc',
        '<leader>gof',
        '<leader>gog',
        '<leader>goh',
        '<leader>goi',
        '<leader>goo',
        '<leader>gop',
        '<leader>gor',
        '<leader>gos',
        '<leader>got',
        '<leader>gou',
        '<leader>gow',
    },
    dependencies = {
        '2kabhishek/utils.nvim',
        'nvim-telescope/telescope.nvim'
    },
    opts = {},
}
