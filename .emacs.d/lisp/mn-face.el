;; Face / Window / Theme
(load-theme 'wombat)

(defun set-frame-size-according-to-resolution ()
  (interactive)
  (if window-system
      (progn
	;; 1500 is the delimiter marging in px to consider the screen big
	;; on the big screen make the fram 237 columns big
	;; on the small screen we use 177 columns  
	(if (> (x-display-pixel-width) 1500)
	    (set-frame-width (selected-frame) 200)
	  (set-frame-width (selected-frame) 177)) 
	
	(setq my-height (/ (- (x-display-pixel-height) 50) ;; cut 150 px of the screen height and use the rest as height for the frame
			   (frame-char-height)))
	(set-frame-height (selected-frame) my-height)
	)))

(set-frame-size-according-to-resolution)

(provide 'mn-face)
