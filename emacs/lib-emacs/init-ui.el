(setq inhibit-startup-screen t)
(setq initial-scratch-message
";; This could be the start of a wonderful hacking session

")

(add-to-list 'default-frame-alist '(font . "Inconsolata 10"))
(setq speedbar-mode-hook '(lambda ()
			    (interactive)
			    (other-frame 0)))
(defalias 'yes-or-no-p 'y-or-n-p)


(set-cursor-color "#ffffff")
(setq tab-width 4)
(menu-bar-mode t)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(global-linum-mode 1)

(provide 'init-ui)

(setq evil-default-cursor t)
(set-cursor-color "gray50")
