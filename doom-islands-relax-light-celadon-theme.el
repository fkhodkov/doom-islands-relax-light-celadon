;;; doom-islands-relax-light-celadon-theme.el --- Celadon light theme -*- lexical-binding: t; no-byte-compile: t; -*-
;;
;; Author: Islands Relax Light Celadon Emacs theme contributors
;; Version: 0.1.0
;; Package-Requires: ((emacs "27.1") (doom-themes "2.3.0"))
;; Keywords: faces, themes
;; URL: https://github.com/fkhodkov/doom-islands-relax-light-celadon
;;
;;; Commentary:
;;
;; A Doom-compatible Emacs port of Panxiaoan's Islands Relax Light Celadon
;; theme for JetBrains IDEs.  The source palette was taken from upstream
;; commit a6743fb34c96553f3f278a48de3e067e0eb766f7.
;;
;;; Code:

(require 'doom-themes)

(defgroup doom-islands-relax-light-celadon-theme nil
  "Options for the `doom-islands-relax-light-celadon' theme."
  :group 'doom-themes)

(defcustom doom-islands-relax-light-celadon-padded-modeline
  doom-themes-padded-modeline
  "If non-nil, add padding to the mode line.
An integer specifies the exact padding; t means 4 pixels."
  :group 'doom-islands-relax-light-celadon-theme
  :type '(choice integer boolean))

(def-doom-theme doom-islands-relax-light-celadon
  "A gentle Celadon light theme derived from Falcon's JetBrains theme."
  :family 'doom-islands-relax
  :background-mode 'light

  ;; name        default    256        16
  ((bg         '("#e4ecef" "#eeeeee" "white"))
   (bg-alt     '("#d6e8e7" "#e4e4e4" "white"))
   (base0      '("#fafeff" "#ffffff" "white"))
   (base1      '("#f7f8fa" "#eeeeee" "white"))
   (base2      '("#e7effd" "#e4e4e4" "brightwhite"))
   (base3      '("#d3dcdf" "#dadada" "brightblack"))
   (base4      '("#aeb3c2" "#b2b2b2" "brightblack"))
   (base5      '("#767a8a" "#767676" "brightblack"))
   (base6      '("#5a5d6b" "#5f5f5f" "black"))
   (base7      '("#383a42" "#3a3a3a" "black"))
   (base8      '("#27282e" "#262626" "black"))
   (fg         '("#383a42" "#3a3a3a" "black"))
   (fg-alt     '("#5a5d6b" "#5f5f5f" "brightblack"))

   (grey       base4)
   (red        '("#ce5e5e" "#d75f5f" "red"))
   (orange     '("#9c411a" "#af5f00" "brightred"))
   (green      '("#067d17" "#008700" "green"))
   (teal       '("#14646e" "#005f5f" "cyan"))
   (yellow     '("#9e880d" "#878700" "yellow"))
   (blue       '("#174ad4" "#005fd7" "blue"))
   (dark-blue  '("#1a536e" "#005f87" "blue"))
   (magenta    '("#871790" "#870087" "magenta"))
   (violet     '("#643cb8" "#5f5faf" "brightmagenta"))
   (cyan       '("#007297" "#0087af" "brightcyan"))
   (dark-cyan  '("#045f6c" "#005f5f" "cyan"))

   ;; Doom's required semantic color roles.
   (highlight      dark-blue)
   (vertical-bar   base3)
   (selection      dark-blue)
   (builtin        cyan)
   (comments       '("#8c8c8c" "#8a8a8a" "brightblack"))
   (doc-comments   teal)
   (constants      '("#8d4532" "#875f00" "brightred"))
   (functions      violet)
   (keywords       green)
   (methods        violet)
   (operators      green)
   (type           cyan)
   (strings        orange)
   (variables      constants)
   (numbers        magenta)
   (region         '("#afdbb8" "#afd7af" "brightgreen"))
   (error          red)
   (warning        '("#cc9d57" "#d7af5f" "yellow"))
   (success        '("#30a25e" "#00af5f" "green"))
   (vc-modified    blue)
   (vc-added       green)
   (vc-deleted     base5)

   ;; Islands UI colors.
   (main-bg        '("#c4dee4" "#d7d7d7" "white"))
   (ui-bg          bg)
   (ui-hover       '("#c7dae1" "#d7d7d7" "brightwhite"))
   (ui-tab         '("#cedee2" "#d7d7d7" "brightwhite"))
   (search-match   '("#f6d4c8" "#ffd7af" "brightred"))
   (caret-row      '("#f7f8fa" "#eeeeee" "white"))
   (paren-match    '("#c2e6e2" "#afd7d7" "cyan"))
   (error-bg       '("#ffe8e8" "#ffd7d7" "red"))
   (lazy-match     '("#fde8b1" "#ffdfaf" "yellow"))
   (match-bg       '("#fff0a6" "#ffffaf" "yellow"))
   (diff-added-bg  '("#d9eadc" "#d7ffd7" "green"))
   (diff-removed-bg '("#e4e6eb" "#e4e4e4" "brightblack"))
   (diff-changed-bg '("#c2d6fc" "#d7d7ff" "blue"))
   (diff-added-hi  '("#d0e5d4" "#afffaf" "green"))
   (diff-removed-hi '("#d9dce2" "#d7d7d7" "brightblack"))
   (modeline-bg    main-bg)
   (modeline-fg    dark-blue)
   (modeline-bg-inactive ui-bg)
   (modeline-fg-inactive base5)
   (-modeline-pad
    (when doom-islands-relax-light-celadon-padded-modeline
      (if (integerp doom-islands-relax-light-celadon-padded-modeline)
          doom-islands-relax-light-celadon-padded-modeline
        4))))

  (((cursor &override) :background green)
   ((region &override) :background region :foreground 'unspecified :extend t)
   ((hl-line &override) :background caret-row)
   ((highlight &override) :background ui-hover :foreground fg)
   ((fringe &override) :background bg :foreground base4)
   ((vertical-border &override) :foreground base3)
   ((line-number &override) :background bg :foreground base4)
   ((line-number-current-line &override) :background bg :foreground green :weight 'bold)
   ((fill-column-indicator &override) :foreground base3)
   ((font-lock-comment-face &override) :foreground comments :slant 'italic)
   ((font-lock-doc-face &override) :foreground comments :slant 'italic)
   ((font-lock-constant-face &override) :foreground constants :slant 'italic)
   (show-paren-match :background paren-match :foreground dark-cyan :weight 'bold)
   (show-paren-mismatch :background error-bg :foreground red :weight 'bold)
   (isearch :background search-match :foreground fg :weight 'bold)
   (lazy-highlight :background lazy-match :foreground fg)
   (match :background match-bg :foreground fg)
   (tooltip :background base0 :foreground fg)
   (link :foreground dark-blue :underline t)
   (shadow :foreground base5)
   (mode-line
    :background modeline-bg :foreground modeline-fg
    :box (if -modeline-pad `(:line-width ,-modeline-pad :color ,modeline-bg)))
   (mode-line-inactive
    :background modeline-bg-inactive :foreground modeline-fg-inactive
    :box (if -modeline-pad `(:line-width ,-modeline-pad :color ,modeline-bg-inactive)))

   ;;;; Completion UIs
   (vertico-current :background ui-hover :foreground fg)
   (corfu-current :background ui-hover :foreground fg)
   (company-tooltip :background ui-bg :foreground fg)
   (company-tooltip-selection :background ui-hover :foreground fg)
   (company-tooltip-common :foreground dark-blue :weight 'bold)
   (company-scrollbar-bg :background base3)
   (company-scrollbar-fg :background base4)
   (marginalia-documentation :foreground comments :slant 'italic)
   (which-key-key-face :foreground dark-blue :weight 'bold)

   ;;;; Doom UI
   (doom-modeline-bar :background dark-blue)
   (doom-modeline-buffer-modified :foreground blue :weight 'bold)
   (solaire-default-face :background bg-alt)
   (solaire-mode-line-face :inherit 'mode-line :background ui-tab)
   (solaire-mode-line-inactive-face :inherit 'mode-line-inactive :background bg-alt)

   ;;;; Version control and diagnostics
   (diff-added :background diff-added-bg :foreground green)
   (diff-removed :background diff-removed-bg :foreground base5)
   (diff-changed :background diff-changed-bg :foreground blue)
   (magit-diff-added-highlight :background diff-added-hi :foreground green)
   (magit-diff-removed-highlight :background diff-removed-hi :foreground base6)
   (magit-diff-context-highlight :background caret-row)
   (magit-section-highlight :background caret-row)
   (flycheck-error :underline `(:style wave :color ,red))
   (flycheck-warning :underline `(:style wave :color ,warning))
   (flycheck-info :underline `(:style wave :color ,blue))

   ;;;; Org and Markdown
   ((org-block &override) :background bg-alt :extend t)
   ((org-block-begin-line &override) :background base3 :foreground base6 :extend t)
   ((org-block-end-line &override) :inherit 'org-block-begin-line)
   ((org-code &override) :foreground orange)
   ((org-table &override) :foreground dark-cyan)
   ((org-todo &override) :foreground red :weight 'bold)
   ((org-done &override) :foreground success :weight 'bold)
   ((org-date &override) :foreground blue :underline t)
   ((markdown-code-face &override) :background bg-alt)
   ((markdown-inline-code-face &override) :foreground orange)
   (markdown-markup-face :foreground base5)

   ;;;; Rainbow delimiters
   (rainbow-delimiters-depth-1-face :foreground green)
   (rainbow-delimiters-depth-2-face :foreground violet)
   (rainbow-delimiters-depth-3-face :foreground cyan)
   (rainbow-delimiters-depth-4-face :foreground constants)
   (rainbow-delimiters-depth-5-face :foreground blue)
   (rainbow-delimiters-depth-6-face :foreground magenta)
   (rainbow-delimiters-depth-7-face :foreground teal)
   (rainbow-delimiters-depth-8-face :foreground orange)
   (rainbow-delimiters-depth-9-face :foreground red)

   ;;;; Treemacs and tabs
   (treemacs-root-face :foreground dark-blue :weight 'bold :height 1.2)
   (doom-themes-treemacs-root-face :foreground dark-blue :weight 'bold :height 1.2)
   (tab-bar :background main-bg :foreground fg)
   (tab-bar-tab :background ui-bg :foreground dark-blue :weight 'bold)
   (tab-bar-tab-inactive :background main-bg :foreground base5)
   (tab-line :background ui-bg :foreground base5)
   (tab-line-tab-current :background ui-tab :foreground dark-blue :weight 'bold)
   (tab-line-tab-inactive :background ui-bg :foreground base5))

  ())

;;; doom-islands-relax-light-celadon-theme.el ends here
