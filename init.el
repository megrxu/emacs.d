;;; init.el --- The main entry for emacs
;;; Commentary:
;;; Code:

;; Packages
(require 'package)
(setq package-enable-at-startup nil)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)

(package-initialize)

;; Bootstrap `use-package'
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(setq debug-on-error t)

(add-to-list 'load-path (expand-file-name "plugins" user-emacs-directory))
(add-to-list 'load-path (expand-file-name "plugins/snippets" user-emacs-directory))
(setq custom-file (expand-file-name "custom.el" user-emacs-directory))

(use-package init-base)
(use-package init-org)
(use-package init-ui)
(use-package init-misc)
(use-package init-git)
(use-package init-dev)

(when (file-exists-p custom-file)
  (load custom-file))

(provide 'init)
;;; init.el ends here

(set-frame-font "BlexMono Nerd Font 14")

(desktop-save-mode 1)

;; ## added by OPAM user-setup for emacs / base ## 56ab50dc8996d2bb95e7856a6eddb17b ## you can edit, but keep this line
(require 'opam-user-setup "~/.emacs.d/opam-user-setup.el")
;; ## end of OPAM user-setup addition for emacs / base ## keep this line
