;;; package --- load path init
;;; Commentary:
;; ---------------------------------------------------
;; Created by: jojo
;; add ~/.emacs.d/elpa 's subdirectories to load path
;; to ensure the package installed by manual can be founde by require
;; ---------------------------------------------------
;;; Code:
(let ((default-directory "~/.emacs.d/elpa/"))
  (normal-top-level-add-subdirs-to-load-path))

;; To add only some subdirectories, pass the list as a second argument. For example:
;;(let ((default-directory "~/.emacs.d/elpa/"))
;;  (normal-top-level-add-to-load-path '("emms" "erc" "planner" "w3")))

(provide 'init-loadpath)

;;; init-loadpath ends here
