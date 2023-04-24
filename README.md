# nvim

## Dependencies
1. NeoVIM > 0.8, need compile via source code, URL: https://github.com/neovim/neovim/releases/tag/v0.8.0
1. Node > 15  https://nodejs.org/dist/v16.18.0/
1. LUA > 5.1
1. clangd > 14 https://clangd.llvm.org/
1. Telescope extension Dependencies: 
```
sudo apt-get install fd-find
sudo apt-get install ripgrep
```
6. NerdFont: https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts/Hack
```
fc-cache -f -v0
fc-list | grep "Hack"
```

## Remember
The clipboard is not work if you enabled the preference->profile->terminal->enable mouse reporting in ITEMS2

## TODO
1. Telescope extension to accelerate the index https://github.com/nvim-telescope/telescope-fzf-native.nvim
1. Support Python

## Resources
https://www.bilibili.com/video/BV1QL4y147VD?p=1&vd_source=fcef647ca87eef400020c837ba3ef80b
https://juejin.cn/book/7051157342770954277/section/7051399376945545252


## Basic 
```
-- utf8
vim.g.encoding = "UTF-8"
vim.o.fileencoding = "utf-8"
-- jkhl 移动时光标周围保留8行
vim.o.scrolloff = 8
vim.o.sidescrolloff = 8
-- 使用相对行号
vim.wo.number = true
vim.wo.relativenumber = true
-- 高亮所在行
vim.wo.cursorline = true
-- 显示左侧图标指示列
vim.wo.signcolumn = "yes"
-- 右侧参考线，超过表示代码太长了，考虑换行
vim.wo.colorcolumn = "80"
-- 缩进2个空格等于一个Tab
vim.o.tabstop = 2
vim.bo.tabstop = 2
vim.o.softtabstop = 2
vim.o.shiftround = true
-- >> << 时移动长度
vim.o.shiftwidth = 2
vim.bo.shiftwidth = 2
-- 空格替代tab
vim.o.expandtab = true
vim.bo.expandtab = true
-- 新行对齐当前行
vim.o.autoindent = true
vim.bo.autoindent = true
vim.o.smartindent = true
-- 搜索大小写不敏感，除非包含大写
vim.o.ignorecase = true
vim.o.smartcase = true
-- 搜索不要高亮
vim.o.hlsearch = false
-- 边输入边搜索
vim.o.incsearch = true
-- 命令行高为2，提供足够的显示空间
vim.o.cmdheight = 1
-- 当文件被外部程序修改时，自动加载
vim.o.autoread = true
vim.bo.autoread = true
-- 禁止折行
vim.wo.wrap = false
-- 光标在行首尾时<Left><Right>可以跳到下一行
vim.o.whichwrap = "<,>,[,]"
-- 允许隐藏被修改过的buffer
vim.o.hidden = true
-- 鼠标支持
vim.o.mouse = "a"
-- 禁止创建备份文件
vim.o.backup = false
vim.o.writebackup = false
vim.o.swapfile = false
-- smaller updatetime
vim.o.updatetime = 300
-- 设置 timeoutlen 为等待键盘快捷键连击时间500毫秒，可根据需要设置
-- 遇到问题详见：https://github.com/nshen/learn-neovim-lua/issues/1
vim.o.timeoutlen = 500
-- split window 从下边和右边出现
vim.o.splitbelow = true
vim.o.splitright = true
-- 自动补全不自动选中
vim.g.completeopt = "menu,menuone,noselect,noinsert"
-- 样式
vim.o.termguicolors = true
vim.opt.termguicolors = true
-- 是否显示不可见字符
vim.o.list = false
-- 不可见字符的显示，这里只把空格显示为一个点
vim.o.listchars = "space:·,tab:··"
-- 补全增强
vim.o.wildmenu = true
-- Dont' pass messages to |ins-completin menu|
vim.o.shortmess = vim.o.shortmess .. "c"
-- 补全最多显示10行
vim.o.pumheight = 10
-- 永远显示 tabline
vim.o.showtabline = 2
-- 使用增强状态栏插件后不再需要 vim 的模式提示
vim.o.showmode = false
-- 配置剪切板
vim.opt.clipboard = "unnamedplus"
```

## Keymap
```
<C-h/j/k/l> 窗口左上下右移动
<S-h/k>  tab页左右移动
<Leader-bb> 关闭tab页
<Leader-e> 打开/关闭NvimTree
<Leader-f> 搜索文件
<Leader-shift-f> 搜索内容
gd 跳转定义，也可用于跳转头文件
gr 跳转引用
<C-\> 打开/关闭termator
其他的都和vim常用快捷键一样
Telescope i-><C-q> jump quick fix mode
<Leader><Up>/<Down>/<Left>/<Right> resize windows
```
