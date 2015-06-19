;;; init-ag.el --- init-ag
;;; Commentary:
;; refs: https://github.com/Wilfred/ag.el
;; created by: jojo
;;; Code:
(require-package 'ag)
(require 'ag)
;; usage: http://agel.readthedocs.org/en/latest/usage.html
;; customized: http://agel.readthedocs.org/en/latest/configuration.html
(setq ag-reuse-window 't)
(setq ag-reuse-buffers 't)

(provide 'init-ag)
;;; init-ag ends here
