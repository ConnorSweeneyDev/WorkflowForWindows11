g.mapleader = " "

map("n", " ", "<NOP>")
map("n", "<C-f>", "<NOP>")

map("n", "<LEADER>w", "<CMD>w<CR>")
map("n", "<LEADER>tw", "<CMD>set wrap!<CR>")

map("n", "J", "mzJ`z")
map("n", "gJ", "mzgJ`z")
map("v", "J", ":m '>+1<CR>gv=gv")
map("v", "K", ":m '<-2<CR>gv=gv")
map({"n", "v"}, "j", "gj")
map({"n", "v"}, "k", "gk")

map("n", "<A-h>", "<C-w>h")
map("n", "<A-j>", "<C-w>j")
map("n", "<A-k>", "<C-w>k")
map("n", "<A-l>", "<C-w>l")

map({"n", "v"}, "<LEADER>y", [["+y]])
map("n", "<LEADER>Y", [["+Y]])
map("x", "<LEADER>p", [["_dP]])
map({"n", "v"}, "<LEADER>d", [["_d]])
map({"n", "v"}, "<LEADER>c", [["_c]])
map({"n", "v"}, "<LEADER>x", [["_x]])

map("n", "<LEADER>s", ":%s/<C-r><C-w>/<C-r><C-w>/g<Left><Left>")
map("n", "<C-s>", ":%s//g<Left><Left>")
map("v", "<LEADER>s", "\"hy:%s/<C-r>h/<C-r>h/g<Left><Left>")
map("v", "<C-s>", ":s//g<Left><Left>")
map("v", "<C-n>", ":normal ")

-- Will specifically search in files in the program directory
map("n", "<LEADER>qg", ":silent grep  program<C-Left><Left>")
map("n", "<LEADER>qo", "<CMD>copen<CR>")
map("n", "<LEADER>qr", ":cdo s//g<Left><Left>")
map("n", "<LEADER>qw", "\"+yiw:silent grep <C-r><C-w> program<CR><CMD>copen<CR>")
map("n", "<LEADER>qW", "\"+yiw:silent grep <C-r><C-a> program<CR><CMD>copen<CR>")
map("v", "<LEADER>q", "\"+ygv\"hy:silent grep <C-r>h program<CR><CMD>copen<CR>")

-- Change to your liking based on the terminal/project you are using
map("n", "<LEADER>v", "<CMD>!./script/clean.bat -wezterm<CR>")
map("n", "<LEADER>b", "<CMD>!./script/build.bat -wezterm<CR>")
map("n", "<LEADER>n", "<CMD>!./script/run.bat -wezterm<CR>")
map("n", "<LEADER>m", "<CMD>!./script/debug.bat -wezterm<CR>")

-- These bindings require the powershell profile that defines these functions
map("n", "<C-w>e", "<CMD>!e<CR>")
map("n", "<C-f>d", "<CMD>!fd<CR>")
map("n", "<C-f>u", "<CMD>!fu<CR>")
