# gg.zsh-theme

A ZSH theme based on [agnoster](https://github.com/ohmyzsh/ohmyzsh/blob/master/themes/agnoster.zsh-theme) theme from [oh-my-zsh](https://github.com/ohmyzsh/ohmyzsh), extended with extra prompts.

It uses, in addition to the standard agnoster dependencies, the following fonts for the extra 
symbols used in this theme:

- [Nerd Fonts](https://www.nerdfonts.com/)

# Setup

To setup the theme, symlink or place the `gg.zsh-theme` inside `~/.oh-my-zsh/custom/themes` folder.
Then edit `~/.zshrc` to set:

```bash
ZSH_THEME="gg"
```

## What does it show?

Same as the agnoster team plus:
- Node project/node version if `package.json` found.
- Forced python virtual environment display forcing `PYENV_VIRTUALENV_DISABLE_PROMPT=1`.
- Shows when you're in a sbt/scala folder (though still not check parents).
- Shows when you're in a golang folder with the golang version used.
