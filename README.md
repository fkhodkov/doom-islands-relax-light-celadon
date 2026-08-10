# Islands Relax Light Celadon for Emacs

A Doom-compatible Emacs port of Panxiaoan's **Islands Relax Light Celadon**
theme from [Falcon JetBrains Themes][falcon]. It keeps the original soft
blue-celadon surfaces and green, cyan, violet, and brown syntax palette.

The palette is pinned to upstream commit
`a6743fb34c96553f3f278a48de3e067e0eb766f7`.

## Installation

### Doom Emacs

Add a recipe to `packages.el`:

```elisp
(package! doom-islands-relax-light-celadon
  :recipe (:host github
           :repo "fkhodkov/doom-islands-relax-light-celadon"
           :files ("*.el")))
```

Then set the theme in `config.el`:

```elisp
(setq doom-theme 'doom-islands-relax-light-celadon)
```

Run `doom sync` and restart Emacs.

For local development, replace the recipe with the repository's absolute
path:

```elisp
(package! doom-islands-relax-light-celadon
  :recipe (:local-repo "/path/to/emacs-islands-relax-light-celadon"))
```

### Plain Emacs

Install `doom-themes`, add this repository to `custom-theme-load-path`, and
load the theme:

```elisp
(add-to-list 'custom-theme-load-path
             "/path/to/emacs-islands-relax-light-celadon")
(load-theme 'doom-islands-relax-light-celadon t)
```

### Kitty terminal

Copy the Kitty theme into your Kitty configuration directory:

```sh
cp kitty/Islands-Relax-Light-Celadon.conf ~/.config/kitty/
```

Then include it from `kitty.conf`:

```conf
include Islands-Relax-Light-Celadon.conf
```

Reload Kitty's configuration with <kbd>Ctrl</kbd>+<kbd>Shift</kbd>+<kbd>F5</kbd>.
The theme defines the terminal foreground and background, ANSI palette,
selection, cursor, borders, tabs, marks, and scrollbar colors.

### bat / batcat

On Ubuntu, the `bat` executable is named `batcat`. Install the theme and
rebuild bat's theme cache with:

```sh
mkdir -p "$(batcat --config-dir)/themes"
cp "bat/Islands Relax Light Celadon.tmTheme" "$(batcat --config-dir)/themes/"
batcat cache --build
```

Select it in `$(batcat --config-file)`:

```text
--theme="Islands Relax Light Celadon"
```

For a one-off preview, run:

```sh
batcat --theme="Islands Relax Light Celadon" path/to/file
```

## Palette

| Role | Color |
| --- | --- |
| Editor background | `#e4ecef` |
| Islands chrome | `#c4dee4` |
| Primary UI accent | `#1a536e` |
| Selection | `#afdbb8` |
| Keywords/operators | `#067d17` |
| Types/built-ins | `#007297` |
| Functions | `#643cb8` |
| Strings | `#9c411a` |
| Constants/variables | `#8d4532` |
| Comments | `#8c8c8c` |

## Attribution

This is an independent port. The source palette and theme design are from
[Falcon Relax Eyes Theme][falcon], copyright 2024-present Falcon Relax Eyes
Theme, licensed under the MIT License.

[falcon]: https://github.com/panxiaoan/falcon-jetbrains-themes
