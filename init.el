;;; init.el --- Emacs init file where the magic begins.

;;; Commentary:
;; This file loads the literate org file which contains all Emacs customizations.

;;; Code:


;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default bold shadow italic underline bold bold-italic bold])
 '(ansi-color-names-vector
   ["#3c3836" "#fb4933" "#b8bb26" "#fabd2f" "#83a598" "#d3869b" "#8ec07c" "#ebdbb2"])
 '(compilation-message-face (quote default))
 '(custom-safe-themes
   (quote
    ("ed0b4fc082715fc1d6a547650752cd8ec76c400ef72eb159543db1770a27caa7" "73bff6f2ef60f8a1238a9ca666235d258e3acdeeed85d092ca532788dd7a33c4" "81db42d019a738d388596533bd1b5d66aef3663842172f3696733c0aab05a150" "d29231b2550e0d30b7d0d7fc54a7fb2aa7f47d1b110ee625c1a56b30fea3be0f" "7c8478aeefb397014997d637632ef4a461b6d3ecf97d7f21556a32dc3ca01c8c" "ff7625ad8aa2615eae96d6b4469fcc7d3d20b2e1ebc63b761a349bebbb9d23cb" "628278136f88aa1a151bb2d6c8a86bf2b7631fbea5f0f76cba2a0079cd910f7d" "06f0b439b62164c6f8f84fdda32b62fb50b6d00e8b01c2208e55543a6337433a" "bffa9739ce0752a37d9b1eee78fc00ba159748f50dc328af4be661484848e476" "c74e83f8aa4c78a121b52146eadb792c9facc5b1f02c917e3dbb454fca931223" default)))
 '(fci-rule-color "#373b41")
 '(package-selected-packages
   (quote
    (dhall-mode direnv k8s-mode groovy-mode docker all-the-icons lsp-haskell lsp-ui lsp-mode helm-lsp company-lsp dockerfile-mode editorconfig avy-menu hasky-extensions zones company-cabal hlint-refactor dante nix-mode yaml-mode pulseaudio-control playerctl vimrc-mode helm-swoop hydra twittering-mode tide move-text diminish psci yasnippet-snippets keychain-environment hardcore-mode rainbow-delimiters rjsx-mode zop-to-char helm-flycheck paradox exec-path-from-shell smartscan helm-ag psc-ide purescript-mode sudoku 2048-game gruvbox-theme restclient zerodark-theme pdf-tools ace-window git-messenger google-this spacemacs winum org avy smart-mode-line tern-auto-complete js2-refactor keyfreq hungry-delete which-key markdown-mode helm-projectile vmd-mode xref-js2 helm-flx helm-fuzzier spacemacs-theme highlight-numbers pacmacs smartparens zpresent nodejs-repl xkcd web-mode use-package undo-tree spinner smart-mode-line-powerline-theme rainbow-mode py-autopep8 projectile org-bullets multiple-cursors magit js-comint jedi ido-vertical-mode helm git-timemachine git-gutter free-keys flycheck flx-ido expand-region emojify elpy company-tern anzu ag ac-js2)))
 '(vc-annotate-background nil)
 '(vc-annotate-color-map
   (quote
    ((20 . "#cc6666")
     (40 . "#de935f")
     (60 . "#f0c674")
     (80 . "#b5bd68")
     (100 . "#8abeb7")
     (120 . "#81a2be")
     (140 . "#b294bb")
     (160 . "#cc6666")
     (180 . "#de935f")
     (200 . "#f0c674")
     (220 . "#b5bd68")
     (240 . "#8abeb7")
     (260 . "#81a2be")
     (280 . "#b294bb")
     (300 . "#cc6666")
     (320 . "#de935f")
     (340 . "#f0c674")
     (360 . "#b5bd68"))))
 '(vc-annotate-very-old-color nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(org-babel-load-file (expand-file-name (concat user-emacs-directory "config.org")))

(provide 'init)
;;; init.el ends here
