#!/bin/bash
DOTFILES="$HOME/.config"
VSCODE="$HOME/Library/Application Support/Code/User"

ln -sf "$DOTFILES/vscode/settings.json" "$VSCODE/settings.json"
ln -sf "$DOTFILES/vscode/keybindings.json" "$VSCODE/keybindings.json"
