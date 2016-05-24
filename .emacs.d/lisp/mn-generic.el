;;PATH
;(setenv "PATH" "/usr/local/opt/ruby/bin:/usr/local/bin:/usr/local/sbin:/usr/bin:/usr/sbin:/bin:/sbin:/usr/X11/bin")

;; Start directory
(setq default-directory "~/")

;; Window
(setq default-frame-alist '(
			    (wait-for-wm . nil)
			    (background-color . "gray20")
			    (foreground-color . "MediumAquamarine")
			    (cursor-color . "LightGoldenrod")
			    (cursor-type . box)
			    (mouse-color . "yellow")
			    ))

(defun set-frame-size-according-to-resolution ()
  (interactive)
  (if window-system
      (progn
	(if (> (x-display-pixel-width) 1500) ;; 1500 is the delimiter marging in px to consider the screen big
	    (set-frame-width (selected-frame) 200) ;; on the big screen make the fram 237 columns big
	  (set-frame-width (selected-frame) 177)) ;; on the small screen we use 177 columns
	(setq my-height (/ (- (x-display-pixel-height) 50) ;; cut 150 px of the screen height and use the rest as height for the frame
			   (frame-char-height)))
	(set-frame-height (selected-frame) my-height)
	)))

(set-frame-size-according-to-resolution)

;; Window focus
;(global-set-key (kbd "C-x <C-up>") 'windmove-up)
;(global-set-key (kbd "C-x <C-down>") 'windmove-down)
;(global-set-key (kbd "C-x <C-right>") 'windmove-right)
;(global-set-key (kbd "C-x <C-left>") 'windmove-left)


;; Face
(tool-bar-mode 0)                ; turn off toolbar
(global-linum-mode 1)            ; add line numbers on the left
(column-number-mode 1)           ; column numbers in the mode line
(setq inhibit-startup-message 1) ; inhibit startup message
(setq visible-bell 1)            ; disable audible bell
(show-paren-mode 1)              ; highlight matching parentheses

;; Keybinings
; Meta key
(setq mac-option-modifier nil)
(setq mac-command-modifier 'meta)

;; Globals
(fset 'yes-or-no-p 'y-or-n-p)
(global-set-key (kbd "M-l") 'goto-line)

;; Erase buffer
(put 'erase-buffer 'disabled nil)
(global-set-key (kbd "C-c E")  'erase-buffer)

(provide 'mn-generic)
