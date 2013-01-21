(require 'package)
(package-initialize)
(setq url-proxy-services '(("http" . "127.0.0.1:10000")))
(setq url-proxy-services '())
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))
(add-to-list 'package-archives
	     '("melpa" . "http://melpa.milkbox.net/packages/") t)



(setq *package-dir* (concat *emacs-conf-dir* "packages/"))
(add-to-list 'load-path (concat *emacs-conf-dir* "packages-init"))
(require 'get-packages)
(require 'evil)

(require 'init-ace-jump)
(require 'init-ack-and-a-half)
(require 'init-dired)
(require 'init-evil)
(require 'init-rust)
(require 'init-ido)
(require 'init-gnuplot)
(require 'init-haskell)
(require 'init-hober2)
(require 'init-magit)
(require 'init-org)
(require 'init-php-mode)
(require 'init-perspective)
(require 'init-ppcl)
(require 'init-scala)
(require 'init-multi-term)
(require 'init-smex)


(provide 'init-packages)
