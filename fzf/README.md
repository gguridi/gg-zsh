# FZF autocomplete scripts

Personal FZF autocomplete scripts to make my life easier.

## Description

These files contain autocomplete scripts that can help in my day-to-day operations.

## Usage

FZF plugins supplies autocomplete functionality when typing certain commands. 

To trigger the autocomplete you must type:

```bash
$COMMAND + FZF_COMPLETION_TRIGGER + TAB
```

The commands that are implemented are:

```bash
git co          # shows a list of branches from origin to perform a checkout automatically.
ssh             # shows a list of aws ec2 instances to connect.
```

## Setup

First we have to enable the [fzf plugin](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/fzf) that's what will enable the autocomplete functionality.

Then we have to set a variable inside `~/.zshrc` to specify the trigger character for the
autocomplete functionality:

```bash
FZF_COMPLETION_TRIGGER=','
```

Then we have to source those files we want inside `~/.zshrc` so the fzf plugin will load.

```bash
source ~/.oh-my-zsh/custom/plugins/fzf/aws-ec2.fzf
source ~/.oh-my-zsh/custom/plugins/fzf/git-checkout.fzf
```
