vim.g.mapleader = '<tab>' -- doesn't work
vim.cmd.colorscheme('solarized8')
vim.keymap.set({'n'}, '<Space>', ':')
vim.keymap.set({'n'}, 'j', 'gj')
vim.keymap.set({'n'}, 'k', 'gk')
vim.keymap.set('', '<ScrollWheelUp>', '2<C-Y>')
vim.keymap.set('', '<ScrollWheelDown>', '2<C-E>')
vim.keymap.set({'n', 'v'}, '<leader>lr', vim.lsp.buf.references, { buffer = true })

vim.keymap.set('', '<tab>p', '{o<p><Esc>}O</p><Esc>')
vim.keymap.set('', '<tab>/', function() 
    local replace = string.format(vim.opt.commentstring:get(), '\\0') 
    local replace = vim.fn.escape(replace, '/')
    print(replace)
    return ':s/.*/' .. replace .. '/<Esc>'
end, { expr = true, silent = true });
vim.keymap.set('', '<tab>=', function() 
    local replace = string.format(vim.opt.commentstring:get(), '\\(\\.\\*\\)') 
    local replace = vim.fn.escape(replace, '/')
    return ':s/\\V' .. replace .. '/\\1<Esc>'
end, { expr = true });

vim.opt.number = true
vim.opt.hlsearch = false
vim.opt.relativenumber = true
vim.opt.incsearch = true
vim.opt.expandtab = true
vim.opt.autoindent = true
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.virtualedit = 'onemore'
vim.opt.clipboard:append('unnamedplus')
vim.opt.dictionary:append('~/.config/nvim/dict.txt')
vim.opt.complete:append('k')

function P(v)
    print(vim.inspect(v))
    return v
end

print('hello world')

