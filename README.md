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

### Ghostty terminal

Copy the Ghostty theme into its custom theme directory:

```sh
mkdir -p ~/.config/ghostty/themes
cp "ghostty/Islands Relax Light Celadon" ~/.config/ghostty/themes/
```

Then select it in `~/.config/ghostty/config.ghostty` (or `config` on Ghostty
versions before 1.2.3):

```conf
theme = Islands Relax Light Celadon
```

Reload Ghostty's configuration from its application menu. The theme can also
be selected as the light half of an automatic light/dark pair:

```conf
theme = light:Islands Relax Light Celadon,dark:Your Dark Theme
```

On Linux, the theme also uses Ghostty's custom window chrome so the titlebar
matches the original Islands UI palette.

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

### Apache NetBeans

NetBeans treats editor colors and application chrome as separate settings.
Build the editor profile from its XML sources:

```sh
./netbeans/build.sh
```

Then open **Tools > Options > Import**, select the generated
`netbeans/Islands-Relax-Light-Celadon-NetBeans.zip`, and restart NetBeans if
prompted. The profile supplies shared editor colors plus Java semantic colors.

For the matching IDE chrome, select a light FlatLaf look and feel under
**Tools > Options > Appearance > Look and Feel**, then open the **FlatLaf** tab,
choose **Edit custom properties**, and replace its contents with
`netbeans/FlatLaf.properties`. Apply the changes and restart NetBeans. The
generated ZIP is intentionally ignored by Git; rerun `netbeans/build.sh`
whenever its XML sources change.

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
