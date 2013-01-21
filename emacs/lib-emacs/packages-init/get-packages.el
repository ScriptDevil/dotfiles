(require 'cl)
 
(defvar my-packages '(ace-jump-mode ack-and-a-half auctex
		      clojure-mode cmake-mode coffee-mode
		      color-theme evil evil-numbers eshell-manual
		      expand-region gnuplot ghc haskell-mode
		      magit magithub markdown-mode monky
		      multi-term paredit perspective php-mode
		      twilight-anti-bright-theme projectile
		      python rainbow-mode rst scala-mode smex
		      volatile-highlights yaml-mode )
  "A list of packages to ensure are installed at launch.")
 
(defun my-packages-installed-p ()
  (loop for p in my-packages
        when (not (package-installed-p p)) do (return nil)
        finally (return t)))
 
(unless (my-packages-installed-p)
  ;; check for new packages (package versions)
  (package-refresh-contents)
  ;; install the missing packages
  (dolist (p my-packages)
    (when (not (package-installed-p p))
      (package-install p))))

(provide 'get-packages)
