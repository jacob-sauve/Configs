# Configs

My config files.
<br>
<br>
_**‼️ Do note that this repository is contained within my `~/.config/` directory on my local computer, and thus sometimes assumes that arborescence ‼️**_

## Neovim

### Overview 
<details>
    <summary>Expand filetree </summary>

```
.
└── nvim
    ├── init.lua
    ├── lazy-lock.json
    └── lua
        ├── config
        │   └── lazy.lua
        ├── jsauvim
        │   ├── commands.lua
        │   ├── fzf.lua
        │   ├── init.lua
        │   ├── lazygit.lua
        │   ├── lsp.lua
        │   ├── mini.lua
        │   ├── remap.lua
        │   └── set.lua
        └── plugins
            ├── cyberdream.lua
            ├── mason_lspconfig.lua
            ├── mason.lua
            ├── mini.lua
            ├── neoscroll.lua
            └── smear_cursor.luanvim
```

</details>

Useful vim and nvim resources consulted to compile this config are:
- The Primeagen's [0 to LSP](https://www.youtube.com/watch?v=w7i4amO_zaE) video
- Thoughtbot's [How to Do 90% of What Plugins Do](https://www.youtube.com/watch?v=XA2WjJbmmoM) and [Let Vim Do the Typing](https://www.youtube.com/watch?v=3TX3kV3TICU) videos
- The [Nvim documentation](https://neovim.io/doc/user/nvim/)
- The [Neovim From Scratch](https://www.youtube.com/watch?v=ctH-a-1eUME&list=PLhoH5vyxr6Qq41NFL4GvhFp-WLd5xzIzZ) video series
- Elan Medoff's blog post on [running fzf in neovim natively](https://elanmed.dev/blog/native-fzf-in-neovim)

### Features
- Effective keybinds in `remap.lua`
- Awesome options in `set.lua`
- Cool custom commands in `commands.lua`
- A couple of my DIY 'plugins':
    - `fzf.lua`, a _very_ light (~40 lines!) fzf integration in a pop-up window for better searching
    - `lazygit.lua`, a lazygit integration in a pop-up window to manage your repo without leaving nvim!
- Some pretty and/or powerful plugins, managed by [LazyVim](https://github.com/LazyVim/LazyVim):
    - [neoscroll](https://github.com/karb94/neoscroll.nvim) for smoooooooth scrolling
    - [smear-cursor](https://github.com/sphamba/smear-cursor.nvim) for a cursor with undeniable snazz
    - [mason](https://github.com/mason-org/mason.nvim) and [mason-lspconfig](https://github.com/mason-org/mason-lspconfig.nvim) for LSP installation and management
    - [cyberdream](https://github.com/scottmckendry/cyberdream.nvim) for pretty colours
    - [mini](https://github.com/nvim-mini/) for surround, completion...



### Requires:

- [ctags](https://docs.ctags.io/en/latest/man/ctags.1.html) for tagging command
- [LazyVim](https://github.com/LazyVim/LazyVim) for plugin management
- [fzf](https://github.com/junegunn/fzf/tree/master) for fuzzyfind command
- [Lazygit](https://github.com/jesseduffield/lazygit) for lazygit command

## zsh

### Overview 
<details>
    <summary>Expand filetree </summary>
    
```
.
└── zsh
    ├── quotes.txt
    └── .zshrc
```
</details>
In order for zsh to find this config file in the recommended arborescence, include the following code in your `~/.zshenv` file:

```
# allow zsh to find the rc file
export ZDOTDIR="$HOME/.config/zsh"
```

### Features

Currently quite simple, contains:
- aliases
- colourful man pages
- a fox with a randomised quote at login (_requires `zsh/quotes.txt`_)
- a simple but useful custom prompt with current git branch

### Requires:
- [zoxide](https://github.com/ajeetdsouza/zoxide) for smarter cd
- [fzf](https://github.com/junegunn/fzf/tree/master) for fuzzyfind command

***
_Configs by Jacob Sauvé, [@jacob-sauve](https://github.com/jacob-sauve)_
