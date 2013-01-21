(evil-mode 1)
;; Evil by itsel has a couple of cool features that deserve a better
;; binding
(define-key evil-normal-state-map " m" 'evil-jump-item)
(define-key evil-normal-state-map ",," 'evil-buffer)

;; Things that vim screwed up - ergo evil tooo
(define-key evil-normal-state-map "Y" 'copy-to-end-of-line)

;; One shouldn't be using those dratted arrows anyway.
(define-key evil-normal-state-map (kbd "<right>") 'next-error)
(define-key evil-normal-state-map (kbd "<left>") 'previous-error)

;; Only when I enable outline-minor-mode
(define-key evil-normal-state-map " h" 'hide-subtree)
(define-key evil-normal-state-map " s" 'show-subtree)
(define-key evil-normal-state-map " S" 'show-all)
(require 'evil-numbers)

(global-set-key (kbd "C-c +") 'evil-numbers/inc-at-pt)
(global-set-key (kbd "C-c -") 'evil-numbers/dec-at-pt)
(provide 'init-evil)
