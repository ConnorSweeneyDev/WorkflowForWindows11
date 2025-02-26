lazy_util.bootstrap()
map("n", "<LEADER>l", "<CMD>Lazy<CR>")
require("lazy").setup{
  {"nvim-lua/plenary.nvim"},
  {"stevearc/oil.nvim"},
  {"nvim-telescope/telescope.nvim"},
  {"nvim-telescope/telescope-fzf-native.nvim", build = "make"},
  {"fannheyward/telescope-coc.nvim"},
  {"theprimeagen/harpoon", branch = "harpoon2"},
  {"mbbill/undotree"},
  {"gbprod/yanky.nvim"},
  {"ggandor/leap.nvim"},
  {"Sleepful/leap-by-word.nvim"},
  {"kevinhwang91/nvim-bqf"},
  {"itchyny/vim-qfedit"},
  {"MunifTanjim/nui.nvim"},
  {"nvim-tree/nvim-web-devicons"},
  {"Mofiqul/vscode.nvim", name = "vscode"},
  {"nvim-lualine/lualine.nvim"},
  {"rcarriga/nvim-notify"},
  {"folke/noice.nvim"},
  {"nvim-treesitter/nvim-treesitter", build = ":TSUpdate"},
  {"neoclide/coc.nvim", branch = "release", commit = "ebe7a08"},
  {"sindrets/diffview.nvim"},
  {"NeogitOrg/neogit"},
  {"supermaven-inc/supermaven-nvim"}
}
