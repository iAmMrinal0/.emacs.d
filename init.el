;;; init.el --- Emacs init file where the magic begins.

;;; Commentary:
;; This file loads the literate org file which contains all Emacs customizations.

;;; Code:


;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default bold shadow italic underline bold bold-italic bold])
 '(ansi-color-names-vector
   ["#3c3836" "#fb4933" "#b8bb26" "#fabd2f" "#83a598" "#d3869b" "#8ec07c" "#ebdbb2"])
 '(compilation-message-face 'default)
 '(fci-rule-color "#373b41")
 '(package-selected-packages
   '(good-scroll smooth-scroll telephone-line dhall-mode direnv k8s-mode groovy-mode docker all-the-icons lsp-haskell lsp-ui lsp-mode helm-lsp company-lsp dockerfile-mode editorconfig avy-menu hasky-extensions zones company-cabal hlint-refactor dante nix-mode yaml-mode pulseaudio-control playerctl vimrc-mode helm-swoop hydra twittering-mode tide move-text diminish psci yasnippet-snippets keychain-environment hardcore-mode rainbow-delimiters rjsx-mode zop-to-char helm-flycheck paradox exec-path-from-shell smartscan helm-ag psc-ide purescript-mode sudoku 2048-game gruvbox-theme restclient zerodark-theme pdf-tools ace-window git-messenger google-this spacemacs winum org avy smart-mode-line tern-auto-complete js2-refactor keyfreq hungry-delete which-key markdown-mode helm-projectile vmd-mode xref-js2 helm-flx helm-fuzzier spacemacs-theme highlight-numbers pacmacs smartparens zpresent nodejs-repl xkcd web-mode use-package undo-tree spinner smart-mode-line-powerline-theme rainbow-mode py-autopep8 projectile org-bullets multiple-cursors magit js-comint jedi ido-vertical-mode helm git-timemachine git-gutter free-keys flycheck flx-ido expand-region emojify elpy company-tern anzu ag ac-js2))
 '(vc-annotate-background nil)
 '(vc-annotate-color-map
   '((20 . "#cc6666")
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
     (360 . "#b5bd68")))
 '(vc-annotate-very-old-color nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(org-babel-load-file "config.org")

(provide 'init)
;;; init.el ends here
