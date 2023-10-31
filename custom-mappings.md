# Custom Mappings

For general vim docs, see this [cheat sheet](https://vim.rtorr.com)

## General Remaps

### Normal Mode

`<leader>` = `<Space>`

`<leader>pv` -> NewRW file explorer (`:Explore`)

`<leader>p` -> Paste over without replacing register

`<leader>y` -> copy into system clipboard

`<leader>Y` -> copy rest of line into system clipboard

`<leader>d` -> delete without replacing register

`<leader>f` -> format file

`<leader>wt` -> Close tab (`:closetab`), useful for git diff plugin

`<leader>wc` -> Close window (`:close`)

`<leader>ww` -> Change windows (`<C-w>w`)

### Visual Mode

`J` -> Move highlighted text down

`K` -> Move highlighted text up

## File Tab (barbar) mappings

`<A-,>` -> previous buffer

`<A-.>` -> next buffer

`<A-<>` -> Move buffer tab left

`<A->>` -> Move buffer tab right

`<A-1>` ... `<A-9>` -> go to buffer N

`<A-0>` -> go to last buffer

`<A-p>` -> pin buffer

`<A-c>` -> close buffer

`<C-b>` -> buffer pick mode

## git (diffview) mappings

`<leader>sd` -> open diffview (show diff)

`<leader>wt` -> Close tab (`:closetab`), useful for git diff plugin

`<tab>` -> select next diff file

`<s-tab>` -> select prev diff file

See `:help` when handling conflicts, there is a lot

## file tree

`<leader>t` -> Toggle file tree

`a` -> create file

`d` -> delete file

`gy` -> copy absolute path

`r` -> rename

`u` -> rename full path

## LSP

### Autocomplete

`<C-Space>` -> Start completion

`<C-Enter>` -> Select completion

`<C-j>` -> Next selection

`<C-k>` -> Prev selection

### Analysis

`gd` -> go to definition

`K` -> hover

`<leader>vws` -> query work space

`<leader>vd` -> variable diagnostics (hover)

`<leader>vca` -> variable code actions

`<leader>vrr` -> variable references (find references)

`<leader>vrn` -> variable rename

## Telescope

`<leader>pf` -> project files (find files)

`<C-p>` -> find git files

`<leader>ps` -> project search (grep search)

## Undotree

`<leader>u` -> Toggle undotree

