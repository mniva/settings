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
(require 'mn-startup-args)
(require 'mn-style)
(require 'mn-ido)
(require 'mn-settings)

(kill-buffer "*scratch*")
