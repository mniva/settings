(require 'package)
(setq package-enable-at-startup nil)   ; To prevent initialising twice
(add-to-list 'package-archives '("melpa" . "https://stable.melpa.org/packages/"))
(package-initialize)

;; Bootstrap and load 'use package'
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(eval-when-compile
  (require 'use-package))

(require 'cl-lib)
(require 'diminish)                ;; if you use :diminish
(require 'bind-key)                ;; if you use any :bind variant

;; https://github.com/jwiegley/use-package
(use-package magit                      ; The one and only Git frontend
  :ensure t
  :bind (("C-x g" . magit-status)))
         ;; ("C-c v c" . magit-clone)
         ;; ("C-c v g" . magit-blame)
         ;; ("C-c v l" . magit-log-buffer-file)
         ;; ("C-c v p" . magit-pull))
;;   :config (setq magit-save-repository-buffers 'dontask))

;; Own settings
(add-to-list 'load-path (expand-file-name "~/.emacs.d/lisp"))
(require 'mn-generic)
(require 'mn-face)
(require 'mn-ido)

(kill-buffer "*scratch*")
(server-start)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
