# Configs

My config files.
<br>
<br>
_**‼️ Do note that this repository is contained within my `~/.config/` directory on my local computer, and thus sometimes assumes that arborescence ‼️**_
<br>
<br>
Here is the current filetree of the essential files in this repository:
```
.
├── nvim
│   ├── init.lua
│   ├── lazy-lock.json
│   ├── lua
│   │   ├── config
│   │   │   └── lazy.lua
│   │   ├── jsauvim
│   │   │   ├── commands.lua
│   │   │   ├── fzf.lua
│   │   │   ├── init.lua
│   │   │   ├── lazygit.lua
│   │   │   ├── lsp.lua
│   │   │   ├── remap.lua
│   │   │   └── set.lua
│   │   └── plugins
│   │       ├── cyberdream.lua
│   │       ├── neoscroll.lua
│   │       └── smear_cursor.lua
│   └── tags
└── zsh
    └── quotes.txt
    └── .zshrc
```
## Neovim

Useful vim and nvim resources consulted to compile this config are:
- The Primeagen's [0 to LSP](https://www.youtube.com/watch?v=w7i4amO_zaE) video
- Thoughtbot's [How to Do 90% of What Plugins Do](https://www.youtube.com/watch?v=XA2WjJbmmoM) and [Let Vim Do the Typing](https://www.youtube.com/watch?v=3TX3kV3TICU) videos
- The [Nvim documentation](https://neovim.io/doc/user/nvim/)
- The [Neovim From Scratch](https://www.youtube.com/watch?v=ctH-a-1eUME&list=PLhoH5vyxr6Qq41NFL4GvhFp-WLd5xzIzZ) video series
- Elan Medoff's blog post on [running fzf in neovim natively](https://elanmed.dev/blog/native-fzf-in-neovim)

### Requires:

- [ctags](https://docs.ctags.io/en/latest/man/ctags.1.html) for tagging
- [LazyVim](https://github.com/LazyVim/LazyVim) for plugin management
- [fzf](https://github.com/junegunn/fzf/tree/master) for fuzzyfind command
- [lazygit](https://github.com/jesseduffield/lazygit) for lazygit command

## zsh

Currently quite simple, contains:
- aliases
- colourful man pages
- a fox with a randomised quote at login (_requires `zsh/quotes.txt`_)
- a simple but useful prompt
### Requires:
- [zoxide](https://github.com/ajeetdsouza/zoxide) for smarter cd
- [fzf](https://github.com/junegunn/fzf/tree/master) for fuzzyfind command

***
_Configs by Jacob Sauvé, [@jacob-sauve](https://github.com/jacob-sauve)_
