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

`<leader>wv` -> Split windows vertically (`<C-w>v`)

`<leader>b` -> Back to last buffer

### Visual Mode

`J` -> Move highlighted text down

`K` -> Move highlighted text up

## git (diffview) mappings

`<leader>sd` -> open diffview (show diff)

`<leader>wt` -> Close tab (`:closetab`), useful for git diff plugin

`<tab>` -> select next diff file

`<s-tab>` -> select prev diff file

See `:help` when handling conflicts, there is a lot

## git fugitive

`<leader>gb` -> git browse, open in github

`:Git <git command>` -> run like command line git

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

`gr` -> go to references

`gI` -> go to implementation

`<leader>rn` -> rename

`<leader>ca` -> code actions

`<leader>D` -> type definition

`<leader>ds` -> document symbols

`<leader>ws` -> workspace symbols

`K` -> hover

## Telescope

`<leader>pf` -> project files (find files)

`<C-p>` -> find git files

`<leader>ps` -> project search (grep search)

`<leader>?` -> Search old files

`<leader><space>` -> Search open buffers

`<leader>sh` -> Search Help

`<leader>sg` -> Search Grep (live grep)

`<leader>se` -> Search Errors

`<leader>sr` -> Search Resume

## Undotree

`<leader>u` -> Toggle undotree

