# Zsh Terminal Profile

<img align="center" alt="Zsh" src="ZshTerminal.png">


This is my profile for UNIX(Linux) terminals.

#### `These commands were last tested on Dec 2023 on Ubuntu 22.04.03.`

# Prerequisites

For the scripts to work, I think these are the bare minimum requirements.

```bash
# Update your software repositories.
sudo apt-get update && apt-get upgrade -y
```

```bash
# Install Git & Vim.
sudo apt-get install git vim -y
```

# Installation

### Powerline (and fonts)

First, we'll install the font (RobotoMono for Powerline). I'll also install it into VIM, since that
is my built-in editor of choice (but you don't have to use it).

The Powerline fonts also include special characters (like Git branches) that we will use later in
the terminal profile theme.

```bash
./Powerline.sh
```

### Zsh, OhMyZsh

Now, we have to install Zsh terminal and OhMyZsh.

```bash
./Terminal.sh
```

After this, the terminal should look a bit different, but we need to do the next step to have the
entire theme.

### Profile

The last command is to create a terminal profile that will set the colors and also set the font
to be the Powerline one we installed earlier (required for the theme to display correctly).

```bash
./Profile.sh
```

> You can also change the font to any of the other [Powerline Patched Fonts](https://github.com/powerline/fonts) too if you don't like RobotoMono.

If it looks funky after this command, then you might need to wait until the theme is updated with a
Powerline font (the next step), and may need to also restart your machine.


### Display the profile

```bash
sudo apt-get install neofetch

neofetch
```