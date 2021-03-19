(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes (quote ("d6a00ef5e53adf9b6fe417d2b4404895f26210c52bb8716971be106550cea257"
 default)))
 
 '(safe-local-variable-values 
   (quote ((evafl ignore-errors "Write-contents-functions is a
 buffer-local alternative to before-save-hook"
		  (add-hook 
		   (quote write-contents-functions) 
		   (lambda nil (delete-trailing-whitespace) nil))
		  (require (quote whitespace))
		  "Sometimes the mode needs to be toggled off and on." 
		  (whitespace-mode 0)
		  (whitespace-mode 1)) 
	   (whitespace-line-column . 80) 
	   (whitespace-style face trailing lines-tail) 
	   (require-final-newline . t)))))
(custom-set-faces)

(provide 'mn-custom)
