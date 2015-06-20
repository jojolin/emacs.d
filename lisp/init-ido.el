;; Use C-f during file selection to switch to regular find-file
(require 'ido)
(ido-mode t)
(ido-everywhere t)
(setq ido-enable-flex-matching t)
(setq ido-use-filename-at-point nil)
(setq ido-auto-merge-work-directories-length 0)
(setq ido-use-virtual-buffers t)

(when (maybe-require-package 'ido-ubiquitous)
  (ido-ubiquitous-mode t))

;; Use smex to handle M-x
(when (maybe-require-package 'smex)
  ;; Change path for ~/.smex-items
  (setq smex-save-file (expand-file-name ".smex-items" user-emacs-directory))
  (global-set-key [remap execute-extended-command] 'smex))

(require-package 'idomenu)

;; Allow the same buffer to be open in different frames
(setq ido-default-buffer-method 'selected-window)

;; http://www.reddit.com/r/emacs/comments/21a4p9/use_recentf_and_ido_together/cgbprem
(add-hook 'ido-setup-hook (lambda () (define-key ido-completion-map [up] 'previous-history-element)))

;;; fix-ido
;; created: jojo
;; ref: https://github.com/lewang/flx
(require-package 'flx-ido)
(require 'flx-ido)
(flx-ido-mode 1)
;; disable ido faces to see flx highlights.
(setq ido-enable-flex-matching t)
(setq ido-use-faces nil)
;; or disabled highlights
;; (setq flx-ido-use-faces nil)

;; set threshold to avoid slow for large collections
(setq flx-ido-threshold 10000)

(provide 'init-ido)
