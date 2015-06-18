;;; init-yasnippet.el --- init yasnippet
;; ref: https://github.com/capitaomorte/yasnippet
;; manual: http://capitaomorte.github.io/yasnippet/
;;; Commentary:
;;; Code:
(require-package 'yasnippet)
(require 'yasnippet)
(yas-global-mode 1)
(setq yas-prompt-functions '(yas-ido-prompt
                             yas-dropdown-prompt
                             yas-completing-prompt))

(provide 'init-yasnippet)
;;; init-yasnippet ends here
