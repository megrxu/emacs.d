(use-package org-bullets
  :ensure t
  :config
  (add-hook 'org-mode-hook (lambda () (org-bullets-mode 1))))

(use-package org
  :ensure t
  :config
  (add-hook 'org-mode-hook 'turn-on-font-lock))

(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cc" 'org-capture)
(global-set-key "\C-cb" 'org-iswitchb)

(setq org-log-done 'time)

;; Turn off auto-fold
(setq org-startup-folded nil)

(provide 'init-org)
