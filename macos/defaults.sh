#!/usr/bin/env bash
# macOS system preferences. Idempotent, safe to re-run.
set -euo pipefail

# Battery: show percentage in the menu bar
defaults -currentHost write com.apple.controlcenter BatteryShowPercentage -bool true

# Screenshots: save to ~/Pictures/Screenshots instead of the Desktop
mkdir -p "$HOME/Pictures/Screenshots"
defaults write com.apple.screencapture location -string "$HOME/Pictures/Screenshots"

killall ControlCenter SystemUIServer 2>/dev/null || true
