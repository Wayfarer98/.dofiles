local M = {
    'alexghergh/nvim-tmux-navigation',
    lazy = false,
    opts = {
        disable_when_zoomed = true,
        keybindings = {
            left = '<C-h>',
            down = '<C-j>',
            up = '<C-k>',
            right = '<C-l>',
            last_active = '<C-\\>',
            next = '<C-Space>'
        }
    }
}
return M
