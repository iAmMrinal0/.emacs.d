;;; init.el --- Emacs init file where the magic begins.

;;; Commentary:
;; This file loads the literate org file which contains all Emacs customizations.
;;
;; Package management strategy (works in both modes):
;;
;; - Nix-wrapped emacs (emacsWithPackagesFromUsePackage):
;;   bundled packages are on load-path and registered with package.el, so
;;   `:ensure t' becomes a no-op and use-package just loads them.
;;
;; - Plain emacs (no Nix):
;;   we add MELPA, ensure use-package is installed, and `:ensure t'
;;   triggers package.el to install missing packages from MELPA on first run.
;;
;; The literate config in config.org therefore uses `:ensure t' (not
;; `:straight t') so the same configuration works either way.

;;; Code:

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

(require 'package)
(unless (assoc "melpa" package-archives)
  (add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t))
(unless package--initialized
  (package-initialize))

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(eval-when-compile
  (require 'use-package))

(org-babel-load-file (expand-file-name (concat user-emacs-directory "config.org")))

(provide 'init)
;;; init.el ends here
