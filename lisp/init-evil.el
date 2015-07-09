;;; init-evil.el --- evil-mode supported
;;; Commentary:
;; ---------------------------------------------------
;; Created by: jojo
;; add evil-mode
;; ref: http://www.emacswiki.org/emacs/Evil
;; ---------------------------------------------------
;;; Code:

;;; evil
(require-package 'evil)
;; set variable
;; (setq evil-shift-width 4)
(require 'evil)
;; define keys for state

;; (define-key evil-normal-state-p "w" 'foo)
(define-key evil-visual-state-map (kbd "v") 'er/expand-region)
(define-key evil-insert-state-map (kbd "C-e") 'move-end-of-line)
(define-key evil-insert-state-map (kbd "C-a") 'move-beginning-of-line)
(define-key evil-insert-state-map (kbd "C-y") 'evil-paste-before)
(define-key evil-insert-state-map (kbd "M-j") 'yas-expand)
(define-key evil-emacs-state-map (kbd "M-j") 'yas-expand)

;; add state bindings to regular keymap
;; (define-minior-mode foo-mode
;;   "Foo mode."
;;   :keymap (make-sparse-keymap))
;; (evil-define-key 'normal foo-mode-map "w" 'bar)
;; (evil-define-key 'normal foo-mode-map "e" 'baz)

;; add hooks
;; (add-hook evil-normal-state-entry-hook 'some-hook)

;; define operator
;; (evil-define-operator evil-rot13 (beg end)
;;   "ROT13 encrypt text."
;;   (rot13-region beg end))

;; define text object
;; (evil-define-text-oject foo(count)
;;                         "selec three characters."
;;                         (list (point (+ (point) 3))))

;;; evil-surround
;; ref: https://github.com/timcharper/evil-surround
(require-package 'evil-surround)
(require 'evil-surround)
(global-evil-surround-mode 1)
;; key is "cs" : to remind myself

;;; evil-numbers: seem useless
;; ( require-package 'evil-numbers )

;;; evil-leader
;; ref: https://github.com/cofi/evil-leader
(require-package 'evil-leader)
(global-evil-leader-mode)
;; set leader to ','
(evil-leader/set-leader ",")
(require 'evil-leader)
;; or set to space
;;(evil-leader/set-leader "<SPC>")

;; keys
;; for all mode
(evil-leader/set-key
  "f" 'find-file
  "b" 'ido-switch-buffer
  "d" 'ido-dired
  "s" 'save-some-buffers
  "w" 'save-buffer
  "x" 'kill-buffer
  ;; ace jump key
  "ac" 'evil-ace-jump-char-mode
  "al" 'evil-ace-jump-line-mode
  "aw" 'evil-ace-jump-word-mode
  )
;; for specific mode
;;(evil-leader/set-key-for-mode 'emacs-lisp-mode "b" 'byte-compile-file)

;;; evil-nerd-commenter
;; ref: https://github.com/redguardtoo/evil-nerd-commenter
(require-package 'evil-nerd-commenter)
;; Emacs key bindings
(global-set-key (kbd "M-;") 'evilnc-comment-or-uncomment-lines)
;; (global-set-key (kbd "C-c l") 'evilnc-quick-comment-or-uncomment-to-the-line)
;; (global-set-key (kbd "C-c c") 'evilnc-copy-and-comment-lines)
;; (global-set-key (kbd "C-c p") 'evilnc-comment-or-uncomment-paragraphs)

;; Vim key bindings
(require 'evil-leader)
(global-evil-leader-mode)
(evil-leader/set-key
  "ci" 'evilnc-comment-or-uncomment-lines
  "cl" 'evilnc-quick-comment-or-uncomment-to-the-line
  "ll" 'evilnc-quick-comment-or-uncomment-to-the-line
  "cc" 'evilnc-copy-and-comment-lines
  "cp" 'evilnc-comment-or-uncomment-paragraphs
  "cr" 'comment-or-uncomment-region
  "cv" 'evilnc-toggle-invert-comment-line-by-line
  "\\" 'evilnc-comment-operator ; if you prefer backslash key
  )

;;; evil-mark-replace
;; ref: https://github.com/redguardtoo/evil-mark-replace
(require-package 'evil-mark-replace)
(evil-leader/set-key
  "r" 'evilmr-replace-in-tagged-region
  ;; "cf" 'evilmr-replace-in-defun
  )

;;; evil-matchit
;; ref: https://github.com/redguardtoo/evil-matchit
(require-package 'evil-matchit)
(require 'evil-matchit)
(global-evil-matchit-mode 1)

;;(require-package 'evil-indent-textobject)

;;; evil-visualstar
;; ref: https://github.com/bling/evil-visualstar
(require-package 'evil-visualstar)
(require 'evil-visualstar)
(global-evil-visualstar-mode t)

;;; evil-args
;; maybe later added
;; (require-package 'evil-args)


;;; evil-escape
;; ref: https://github.com/syl20bnr/evil-escape
;; !!: cannot be used during macro recording, use regular ESC instead
(require-package 'evil-escape)
(require 'evil-escape)
(hl-line-mode 1)  ;; !!:must set the hl-line-mode or it may not work
(setq-default evil-escape-key-sequence ",,")
(setq-default evil-escape-delay 0.2)
(evil-escape-mode 1)

;;; evil-lisp-state
(require-package 'evil-lisp-state)
(require 'evil-lisp-state)

;;; evil-exchange
;; maybe later added
;; (require-package 'evil-exchange)

;;; evil-jumper
;; maybe later added
;; (require-package 'evil-jumper)


;;(require-package 'evil-org-mode)


;;; evil-snipe
;; ref: https://github.com/hlissner/evil-snipe
(require-package 'evil-snipe)
(require 'evil-snipe)

;;(setq evil-snipe-repeat-keys t)
;; or 'buffer, 'whole-visible or 'whole-buffer
(setq evil-snipe-scope 'line)
(setq evil-snipe-repeat-scope 'whole-visible)
(setq evil-snipe-enable-highlight t)
(setq evil-snipe-enable-incremental-highlight t)

;; Note: vertical scoping isn't implemented yet
;; (evil-snipe-add-alias ?[ "[[{(]")
(evil-snipe-mode 1)

;;; evil-tutor
;; ref: https://github.com/syl20bnr/evil-tutor
(require-package 'evil-tutor)
;; start the tutor by
;; M-x evil-tutor-start

;; (require-package 'term+evil)
(evil-mode 1)

(provide 'init-evil)
;;; init-evil ends here
