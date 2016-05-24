(require 'package)

(setq package-archives '( ("gnu" . "https://elpa.gnu.org/packages/")
			  ("melpa" . "https://melpa.org/packages/")
			  ))
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
  :bind ("C-x C-m" . magit-status))

(use-package markdown-mode
  :ensure t
  :commands (markdown-mode gfm-mode)
  :mode (("README\\.md\\'" . gfm-mode)
         ("\\.md\\'" . markdown-mode)
         ("\\.markdown\\'" . markdown-mode))
  :init (setq markdown-command "multimarkdown"))

(use-package grip-mode
  :ensure t
  :bind (:map markdown-mode-command-map
	      ("g" . grip-mode)))


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
   '(grip-mode markdown-mode markdown-preview-mode cl-lib-highlight magit use-package)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
