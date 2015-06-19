;;; init-python-mode.el --- init python mode
;;; Commentary:
;;; Code:
(setq auto-mode-alist
      (append '(("SConstruct\\'" . python-mode)
		("SConscript\\'" . python-mode))
              auto-mode-alist))

(require-package 'pip-requirements)

;;; jedi
;; ref: http://tkf.github.io/emacs-jedi/released/#manual-install
(el-get-install 'jedi)
(add-hook 'python-mode-hook 'jedi:setup)
(add-hook 'python-mode-hook 'jedi:ac-setup)
;;(setq jedi:setup-keys t)  ;obsolete since 0.1.3
(setq jedi:complete-on-dot t)
(setq jedi:tooltip-method nil)
(setq jedi:get-in-function-call-delay 200)
;; substitution path? I don't understand
(setq jedi:goto-definition-config
      '((nil definition nil)
        (t   definition nil)
        (nil nil        nil)
        (t   nil        nil)
        (nil definition t  )
        (t   definition t  )
        (nil nil        t  )
        (t   nil        t  )))
;; keys
(setq jedi:key-complete (kbd "<C-tab>"))

;;; jedi-direx:
;; !!: sometimes casuse emacs to core dumped so i comment out this momment
;; (require-package 'jedi-direx)
;; (eval-after-load "python"
;;   '(define-key python-mode-map "\C-cx" 'jedi-direx:pop-to-buffer))
;; (add-hook 'jedi-mode-hook 'jedi-direx:setup)

;;; pep8 and pylint
;; style errors and common mistakes
(require-package 'python-pep8)
(require-package 'python-pylint)
(require 'python-pep8)
(require 'python-pylint)

;;; pylookup
;; ref: https://github.com/tsgates/pylookup
;; usage: ./pylookup.py -u [python-2.7.1-docs-html]
(el-get-install 'pylookup)
;; add pylookup to your loadpath, ex) ~/.emacs.d/el-get/pylookup
(setq pylookup-dir "~/.emacs.d/el-get/pylookup")
;; load pylookup when compile time
(eval-when-compile (require 'pylookup))
;; set executable file and db file
(setq pylookup-program (concat pylookup-dir "/pylookup.py"))
(setq pylookup-db-file (concat pylookup-dir "/pylookup.db"))
;; set search option if you want
;; (setq pylookup-search-options '("--insensitive" "0" "--desc" "0"))
;; to speedup, just load it on demand
(autoload 'pylookup-lookup "pylookup"
  "Lookup SEARCH-TERM in the Python HTML indexes." t)
(autoload 'pylookup-update "pylookup"
  "Run pylookup-update and create the database at `pylookup-db-file'." t)
;; key
(global-set-key (kbd "C-c h") 'pylookup-lookup)

;;; EIN: emacs ipython notebook
;; ref: https://github.com/millejoh/emacs-ipython-notebook
;; manual: http://tkf.github.io/emacs-ipython-notebook/
;; usage: use M-x ein:connect-to-notebook-buffer to connnect to a notebook
(require 'ein)
(add-hook 'ein:connect-mode-hook 'ein:jedi-setup)
;; enable auto-complete
;; (setq ein:use-auto-complete t)
;; more hacky way
(setq ein:use-auto-complete-superpack t)

;;; Utility for developming easily
;; ref: http://pedrokroger.net/configuring-emacs-python-ide/
;; highlight debug
(defvar python/highlight-lines
  '("import pdb"
    "pdb.set_trace()"))
(defun hl-debug ()
  "Hightline debug lines."
  (interactive)
  (dolist (line python/highlight-lines)
    (highlight-lines-matching-regexp line)))
(add-hook 'python-mode-hook 'hl-debug)

(provide 'init-python-mode)
;;; init-python-mode ends here
