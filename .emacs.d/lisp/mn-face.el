;; Face / Window / Theme
(load-theme 'wombat)

;; Settings
(menu-bar-mode -1)               ; hide menu bar
(tool-bar-mode -1)               ; hide tool bar
(column-number-mode 1)           ; column numbers in the mode line
(setq inhibit-startup-message 1) ; inhibit startup message
(setq visible-bell nil)          ; disable audible bell
(show-paren-mode 1)              ; highlight matching parentheses

(defun set-frame-size-according-to-resolution ()
  (interactive)
  (if window-system
      (progn
	;; 1500 is the delimiter marging in px to consider the screen big
	;; on the big screen make the fram 237 columns big
	;; on the small screen we use 177 columns  
	(if (> (x-display-pixel-width) 1440)
	    (set-frame-width (selected-frame) 300)
	  (set-frame-width (selected-frame) 100)) 
	
	(setq my-height (/ (- (x-display-pixel-height) 50) ;; cut 150 px of the screen height and use the rest as height for the frame
			   (frame-char-height)))
	(set-frame-height (selected-frame) my-height)
	)))

(set-frame-size-according-to-resolution)

(provide 'mn-face)
