;;; init-python-mode.el --- init python mode
;;; Commentary:
;;; Code:
(require-package 'w3m)
(require 'w3m)

;; #todo
;; here can realize the search customization
(setq w3m-use-cookies t)
(setq browse-url-browser-function 'w3m-browse-url)

(provide 'init-w3m)
;;; init-w3m ends here
