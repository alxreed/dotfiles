#!/usr/bin/env bash
# Applique la config GNOME (workspaces, auto-move, raccourcis).
# Nécessite le paquet gnome-shell-extensions pour Auto Move Windows.
set -euo pipefail
dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

grep -v '^#' "$dir/workspaces.dconf" | dconf load /
gnome-extensions enable auto-move-windows@gnome-shell-extensions.gcampax.github.com
echo "Config GNOME appliquée."
