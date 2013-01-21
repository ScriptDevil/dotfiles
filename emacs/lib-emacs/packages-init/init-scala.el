(add-to-list 'load-path "/usr/share/emacs/site-lisp/scala-mode")
(setq auto-mode-alist 
      (append '(("\\.\\(sbt\\|scala\\)$" . scala-mode)) auto-mode-alist))
(require 'scala-mode)
(provide 'init-scala)
