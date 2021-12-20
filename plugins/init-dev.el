;; Wakatime
(use-package wakatime-mode
  :ensure t)
(global-wakatime-mode)

;; Standard ML
(use-package sml-mode
  :ensure t)


;; FStar
(use-package fstar-mode
  :ensure t)

(use-package tree-sitter
  :ensure t)
(use-package tree-sitter-langs
  :ensure t)

(add-hook 'rust-mode-hook #'tree-sitter-mode #'tree-sitter-hl-mode)
(global-tree-sitter-mode)

(global-font-lock-mode 2)

;; rust
(use-package rust-mode
  :ensure t
  :config
  (setq rust-format-on-save t)
  (use-package cargo
    :ensure t
    :diminish cargo-minor-mode
    :hook (rust-mode . cargo-minor-mode)))

;; proof-general
(use-package proof-general
  :ensure t)

;; racket
(use-package scribble-mode
  :ensure t)
(use-package racket-mode
  :ensure t)

;; show trailing whitespaces
(use-package whitespace
  :ensure nil
  :hook ((prog-mode markdown-mode conf-mode) . whitespace-mode)
  :config
  (setq whitespace-style '(face trailing)))

;; quickrun codes, including cpp. awesome!
(use-package quickrun
  :ensure t
  :bind (("C-c r" . quickrun)))

;; lint
(use-package flycheck
  :ensure t
  :hook (prog-mode . flycheck-mode)
  :diminish " FC")

(provide 'init-dev)
;;; init-dev.el ends here
