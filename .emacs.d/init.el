;; Emacs folder
(add-to-list 'load-path (expand-file-name "~/.emacs.d/lisp"))

;; Settings
(set-face-attribute
 :height 110)

(require 'cl)
(require 'mn-generic)
(require 'mn-ido)
(require 'package)

;; El-get
(add-to-list 'load-path "~/.emacs.d/el-get/el-get")

(setq 
 el-get-sources
 '(el-get
   (:name magit
	  :after (require 'mn-magit))
   ))

(defun sync-packages ()
  "Synchronize packages"
  (interactive)
  (add-to-list 'package-archives '("tromey" . "http://tromey.com/elpa/"))
  (add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))
  (add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/"))
  (setq 
   my-packages 
   (mapcar 'el-get-source-name el-get-sources))
  (el-get 'sync my-packages))


(if (require 'el-get nil t)
    (sync-packages)
  (url-retrieve
   "https://raw.github.com/dimitri/el-get/master/el-get-install.el"
   (lambda (s)
     (let (el-get-master-branch)
       (end-of-buffer)
       (eval-print-last-sexp)
       (setq el-get-verbose t)
       (sync-packages)))))

(kill-buffer "*scratch*")
(server-start)
