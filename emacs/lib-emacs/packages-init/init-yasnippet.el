(setq yas/snippet-dirs (list (concat *emacs-conf-dir* "snippets") (concat *yasnippet-dir* "snippets")))
(yas/global-mode 1)

(provide 'init-yasnippet)
