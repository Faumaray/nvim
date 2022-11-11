local utils = require("utils")

utils.cmd('filetype plugin indent on')

utils.g.mapleader  = " " --map leader key
utils.g.syntax     = 'ON'
-- Global status line
utils.g.laststatus = 3

-- Disable Vim defaults
-- utils.g.coq_settings             = {
-- 	auto_start = 'shut-up',
-- 	display = {
-- 		preview = {
-- 			positions = { east = 1, south = 2, north = 3, west = nil },
-- 		}
-- 	}
-- }
utils.g.loaded_gzip              = 1
utils.g.loaded_tar               = 1
utils.g.loaded_tarPlugin         = 1
utils.g.loaded_zip               = 1
utils.g.loaded_zipPlugin         = 1
utils.g.loaded_getscript         = 1
utils.g.loaded_getscriptPlugin   = 1
utils.g.loaded_vimball           = 1
utils.g.loaded_vimballPlugin     = 1
utils.g.loaded_matchit           = 1
utils.g.loaded_matchparen        = 1
utils.g.loaded_2html_plugin      = 1
utils.g.loaded_logiPat           = 1
utils.g.loaded_rrhelper          = 1
utils.g.loaded_netrw             = 1
utils.g.loaded_netrwPlugin       = 1
utils.g.loaded_netrwSettings     = 1
utils.g.loaded_netrwFileHandlers = 1
utils.g.termguicolors            = true
utils.g['tex_flavor']            = 'latex'
-- Options
-- Use System clipboard
utils.opt.clipboard              = "unnamedplus"
utils.opt.wrap                   = true
-- Show special characters
utils.opt.listchars              = {
	trail = "•",
	nbsp = "␣",
	tab = "» ",
	extends = "→",
	precedes = "←"
}
utils.opt.spell                  = false
utils.opt.spelllang              = { 'en_us', 'ru_ru' }
utils.opt.guifont                = "FiraCode Nerd Font Mono:h8"
utils.opt.laststatus             = 3
utils.opt.confirm                = true
utils.opt.list                   = true
utils.opt.cursorline             = true
utils.opt.smarttab               = true
utils.opt.mouse                  = "a"
utils.opt.magic                  = true
utils.opt.relativenumber         = true
utils.opt.showmode               = true
utils.opt.smartcase              = true
utils.opt.smartindent            = true
utils.opt.splitbelow             = true
utils.opt.splitright             = true
utils.opt.termguicolors          = true
utils.opt.undofile               = true
utils.opt.undolevels             = 10000
utils.opt.updatetime             = 200
utils.opt.hidden                 = true
utils.opt.lazyredraw             = false
utils.opt.fileencoding           = "utf-8"
utils.opt.colorcolumn            = "9999"
utils.opt.backspace              = "indent,eol,start"
utils.opt.foldmethod             = "expr"
utils.opt.foldexpr               = "nvim_treesitter#foldexpr()"
utils.opt.foldlevel              = 99
utils.opt.sessionoptions         = { "buffers", "curdir", "tabpages", "winsize" }
utils.opt.shiftwidth             = 4
utils.opt.softtabstop            = 4
utils.opt.tabstop                = 4
-- Global option vim.O
utils.o.shortmess                = "IToOlxfitn"
utils.o.background               = 'dark'
utils.o.incsearch                = true
utils.o.hlsearch                 = true
utils.o.showmatch                = true
utils.o.completeopt              = "menuone,noselect"
utils.o.expandtab                = true
utils.o.smarttab                 = true
utils.o.shiftwidth               = 4
utils.o.softtabstop              = 4
utils.o.tabstop                  = 4
-- utils.o.cmdheight                = 0
-- utils.o.ls                       = 0
-- utils.o.ch                       = 0
-- Buffer Local Options
utils.bo.autoindent              = true
utils.bo.expandtab               = true
utils.bo.copyindent              = true
utils.bo.shiftwidth              = 4
utils.bo.softtabstop             = 4
utils.bo.tabstop                 = 4
utils.bo.smartindent             = true
utils.bo.swapfile                = false
utils.bo.undofile                = true

-- Window Local Options
utils.wo.cursorline = true
utils.wo.number = true
utils.wo.relativenumber = true
