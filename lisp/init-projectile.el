;;; init-projectile.el --- init-projectile
;;; Commentary:
;; refs: https://github.com/bbatsov/projectile
;; created by: jojo
;;; Code:
(el-get-install 'projectile)
(require 'projectile)
(setq projectile-switch-project-action 'projectile-dired)
(setq projectile-switch-project-action 'projectile-find-dir)
(setq projectile-find-dir-includes-top-level t)

;; (projectile-global-mode)
;; add hook to specific modes
(dolist (hook
         '(python-mode-hook
           lisp-mode-hook
           emacs-lisp-mode-hook))
  (add-hook hook 'projectile-mode)
  (add-hook hook 'hs-minor-mode))

(provide 'init-projectile)
;;; init-projectile ends here





