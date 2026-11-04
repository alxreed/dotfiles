# Dotfiles

Managed with [toml-bombadil](https://github.com/oknozor/toml-bombadil) (`brew install toml-bombadil`, no cargo needed).

## Location

The repo must live at `~/code/alxreed/dotfiles` (`dotfiles_dir` in `bombadil.toml`). Do not clone it elsewhere.

## Editing

- Files in `$HOME` (`~/.zshrc`, `~/.zshenv`, `~/.zprofile`, `~/.gitconfig`, `~/.config/ghostty`, ...) are symlinks to rendered copies in `.dots/` (gitignored). Never edit them directly: edit the template in this repo, then relink.
- Templates use Tera: `{% if "agicap" in profiles %} ... {% endif %}`.
- Apply changes: `bombadil link -p agicap` (`-f` backs up and replaces existing files; it fails on existing directories, so link single files rather than directories).

## Profiles

| Profile | Machine | Notes |
|---|---|---|
| `agicap` | macOS work laptop | Homebrew, cmux terminal, `macos/Brewfile` |
| `arch`, `ubuntu` | Linux | both extend `linux` (sway, niri, waybar, ...) via `extra_profiles` |

## Conventions

- Shell is zsh. cmux reads `~/.config/ghostty/config`; no theme on macOS.
- Homebrew tools are tracked in `macos/Brewfile` (`brew bundle dump --force --file macos/Brewfile --taps --formulae --casks`).
- Secrets never go in this repo: they live in `~/.secrets.zsh` (chmod 600), sourced from `zsh/zshenv`.
- Git: Agicap email + SSH commit signing by default; personal email under `~/code/alxreed/` via `includeIf` (`git/gitconfig-personal`). Work repos go in `~/code/agicap/`.

## Workflow

Feature branch, conventional commits (`feat:`, `chore(scope):`), PR, then **rebase and merge** (`gh pr merge --rebase --delete-branch`). Never force-push `main`.
