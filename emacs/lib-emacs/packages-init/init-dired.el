(add-hook 'dired-load-hook
          (lambda ()
            (load "dired-x")
            (setq dired-x-hands-off-my-keys t)
            ))

(require 'dired-x)
(setq-default dired-omit-files-p t) ; this is buffer-local variable
(setq dired-omit-files
      (concat dired-omit-files "\\|^\\..+$"))

(provide 'init-dired)
