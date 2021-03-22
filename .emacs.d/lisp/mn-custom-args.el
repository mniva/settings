(defun my-argument-fn (switch)
  (magit-status)
  (delete-other-windows))

(add-to-list 'command-switch-alist '("-magit" . my-argument-fn))

(provide 'mn-custom-args)
