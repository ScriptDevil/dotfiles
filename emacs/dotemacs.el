(setq *dotfiles-dir* "~/dotfiles/emacs/")
(setq *emacs-conf-dir* (concat *dotfiles-dir* 
                               "lib-emacs/"))
(load-file (concat *emacs-conf-dir* "init.el"))

(setq custom-file (concat *dotfiles-dir* "custom.el"))
(load custom-file)
