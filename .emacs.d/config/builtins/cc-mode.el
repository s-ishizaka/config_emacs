(add-hook
 'c-mode-common-hook
 (lambda ()
   (hs-minor-mode 1)
   (c-set-style "bsd")
   (setq indent-tabs-mode nill)
   (setq c-basic-offset 2)
   (c-toggle-auto-hungry-state 1)
   (subword-mode 1)))

(add-hook
 'c++-mode-hook
 (lambda ()
   (setq c-hanging-braces-alist
	 '((defun-open after)
	   (class-open after)
	   (inline-open after)
	   ,@c0hanging-braces-alist))))
