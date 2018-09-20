(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (shakespeare-mode intero magit helm-projectile helm icicles flymake-hlint flycheck-haskell w3m yaml-mode tablist s magit-popup exec-path-from-shell company-ghc)))
 '(safe-local-variable-values
   (quote
    ((haskell-process-use-ghci . t)
     (haskell-indent-spaces . 4)))))

(tool-bar-mode -1)
(when window-system (set-frame-size (selected-frame) 90 53))
(define-key key-translation-map (kbd "C-h") (kbd "<DEL>"))
(show-paren-mode t)
(setq make-backup-files nil)
(which-function-mode 1)

;;; package
(require 'package)
(setq package-archives '(("gnu" . "https://elpa.gnu.org/packages/")
                         ("marmalade" . "https://marmalade-repo.org/packages/")
                         ("melpa" . "https://melpa.org/packages/")))
(package-initialize)

;;; exec-path-from-shell-initialize
(when (memq window-system '(mac ns))
  (exec-path-from-shell-initialize))

;;; helm
(require 'helm)
(require 'helm-config)
(helm-mode 1)
(define-key helm-map (kbd "C-h") 'delete-backward-char)
(define-key global-map (kbd "C-x C-f") 'helm-find-files)
(define-key global-map (kbd "C-x b") 'helm-mini)
(define-key global-map (kbd "M-x") 'helm-M-x)
(define-key global-map (kbd "M-y") 'helm-show-kill-ring)

;;; company
(require 'company)
(add-hook 'after-init-hook 'global-company-mode)
(setq company-minimum-prefix-length 2)

;;; speedbar
(require 'speedbar)
(speedbar-add-supported-extension ".hs")
(setq speedbar-show-unknown-files t)

;;; magit
(define-key global-map (kbd "C-x g") 'magit-status)
(define-key global-map (kbd "C-x M-g") 'magit-dispatch-popup)

;;; projectile
(require 'projectile)
(projectile-mode)
(setq projectile-completion-system 'helm)
(helm-projectile-on)

;;; flycheck
(add-hook 'after-init-hook #'global-flycheck-mode)
(setq-default
 flycheck-disabled-checkers '(emacs-lisp-checkdoc)
 flycheck-emacs-lisp-load-path 'inherit
)

;;; yaml-mode
(require 'yaml-mode)
(add-to-list 'auto-mode-alist '("\\.yml$" . yaml-mode))
(add-to-list 'auto-mode-alist '("\\.yaml$" . yaml-mode))

;;; intero
(add-hook 'haskell-mode-hook 'intero-mode)

;;; haskell-mode
(require 'haskell)
(setq haskell-indent-spaces 4)
(add-hook 'haskell-mode-hook 'flyspell-prog-mode)


;;;; HaRe
(add-to-list 'load-path "~/.stack/snapshots/x86_64-osx/lts-7.6/8.0.1/share/x86_64-osx-ghc-8.0.1/HaRe-0.8.3.0/elisp/")
(require 'hare)
(autoload 'hare-init "hare" nil t)
(add-hook 'haskell-mode-hook 'hare-init)
;(setq ghc-hare-command "ghc-hare")

;;; scheme
(require 'scheme)
(setq scheme-program-name "gosh -i")
(autoload 'scheme-mode "cmuscheme" "Major mode for Scheme." t)
(autoload 'run-scheme "cmuscheme" "Run an inferior Scheme process." t)
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

