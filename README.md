# My Dotfiles

[繁體中文](./README.zh-TW.md) | English

## Quick Start

```bash
# Install zsh
sudo apt install zsh    # Ubuntu/Debian
brew install zsh        # macOS

# Clone and install
git clone <your-repo-url>
cd dotfile/zsh
./install.sh

# Restart terminal
```

## Features

### Directory Navigation
- `z <partial-name>` - Jump to any directory you've visited
- `ls` - Colorful listing with icons
- `tree` - Tree view

### Git Shortcuts
- `gst` - git status
- `gaa` - git add all
- `gco` - git checkout
- `gp` - git push
- `ga` - Interactive git add
- `glo` - Interactive git log

### Productivity
- `Ctrl+R` - Fuzzy search command history
- `**<Tab>` - Fuzzy file completion
- Auto-suggestions as you type
- Real-time syntax highlighting

## Manual Installation

```bash
# Copy configs
cp zshrc ~/.zshrc
cp zshenv ~/.zshenv
cp p10k.zsh ~/.p10k.zsh

# Create directories
mkdir -p ~/.config/zsh ~/.local/bin

# Copy additional files
cp -r config/* ~/.config/zsh/
cp local-bin/env ~/.local/bin/

# Install zinit
bash -c "$(curl -fsSL https://raw.githubusercontent.com/zdharma-continuum/zinit/HEAD/scripts/install.sh)"
```

## Backup and Restore

The install script automatically backs up your existing `.zshrc` to `.zshrc.backup`.

To restore your original config:
```bash
mv ~/.zshrc.backup ~/.zshrc
```

## Optional Tools

- `exa` - Better ls
- `bat` - Better cat
- `lazygit` - Terminal git UI

```bash
# Ubuntu/Debian
sudo apt install exa bat

# macOS
brew install exa bat lazygit
```
