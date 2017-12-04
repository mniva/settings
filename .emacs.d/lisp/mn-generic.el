;;PATH
;(setenv "PATH" "/usr/local/opt/ruby/bin:/usr/local/bin:/usr/local/sbin:/usr/bin:/usr/sbin:/bin:/sbin:/usr/X11/bin")

;; Start directory
(setq default-directory "~/")

(setq backup-directory-alist '(("." . "~/.emacs.d/backup"))
  backup-by-copying t    ; Don't delink hardlinks
  version-control t      ; Use version numbers on backups
  delete-old-versions t  ; Automatically delete excess backups
  kept-new-versions 5    ; how many of the newest versions to keep
  kept-old-versions 2    ; and how many of the old
  )


;; Window focus
(global-set-key (kbd "S-<up>") 'windmove-up)
(global-set-key (kbd "S-<down>") 'windmove-down)
(global-set-key (kbd "S-<right>") 'windmove-right)
(global-set-key (kbd "S-<left>") 'windmove-left)

;; Face
(tool-bar-mode -1)
(global-linum-mode 1)            ; add line numbers on the left
(column-number-mode 1)           ; column numbers in the mode line
(setq inhibit-startup-message 1) ; inhibit startup message
(setq visible-bell 1)            ; disable audible bell
(show-paren-mode 1)              ; highlight matching parentheses

;; Keybinings
(setq mac-option-modifier nil)
(setq mac-command-modifier 'meta)

;; Globals
(fset 'yes-or-no-p 'y-or-n-p)
(global-set-key (kbd "M-l") 'goto-line)
(global-set-key (kbd "C-c C-c") 'comment-or-uncomment-region)

(provide 'mn-generic)
