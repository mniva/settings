(require 'package)

(setq package-archives '( ("gnu" . "https://elpa.gnu.org/packages/")
			  ("marmalade" . "https://marmalade-repo.org/packages/")
			  ("melpa" . "https://melpa.org/packages/")))
(package-initialize)

;; Bootstrap and load 'use package'
;; https://github.com/jwiegley/use-package
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

;; use-package
(defvar use-package-verbose t)
(defvar use-package-always-ensure t)
(eval-when-compile (require 'use-package))

;; https://magit.vc/
(use-package magit
  :ensure t
  :bind ("C-x g" . magit-status))

;; Own settings
(add-to-list 'load-path (expand-file-name "~/.emacs.d/lisp"))
(require 'mn-generic)
(require 'mn-face)
(require 'mn-ido)

(kill-buffer "*scratch*")

;(server-start)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (markdown-mode markdown-preview-mode cl-lib-highlight magit use-package))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
