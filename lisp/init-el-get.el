;;; init-el-get.el --- init-el-get
;;; Commentary:
;; refs: https://github.com/dimitri/el-get
;; created by: jojo
;;; Code:

;; el-get have to be loaded
;; manually git clone el-get into ~/.emacs.d/el-get/el-get
(add-to-list 'load-path "~/.emacs.d/el-get/el-get")

;; when i installed, it's not available in elpa for network reason.
;; if through elpa, it may be installed into ~/.emacs.d/elpa/el-get-xxx
(unless (require 'el-get nil 'noerror)
  (require 'package)
  (add-to-list 'package-archives
               '("melpa" . "http://melpa.org/packages/"))
  (package-refresh-contents)
  (package-initialize)
  (package-install 'el-get)
  (require 'el-get))

;; (add-to-list 'el-get-recipe-path "~/.emacs.d/el-get/user-recipes")
(el-get 'sync)
(el-get 'wait)

(provide 'init-el-get)
;;; init-el-get ends here
