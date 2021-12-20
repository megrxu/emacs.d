;; 操作提示
(use-package which-key
  :ensure t
  :config
  (which-key-mode))

(use-package doom-themes
  :ensure t
  :config
  (load-theme 'doom-city-lights t))

(use-package doom-modeline
  :ensure t
  :hook (after-init . doom-modeline-mode)
  :config
  (setq doom-modeline-height 26))

(use-package neotree
  :ensure t
  :hook (after-init . neotree-show))

(provide 'init-ui)

