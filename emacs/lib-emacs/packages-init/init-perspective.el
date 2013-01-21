(require 'perspective)
(persp-mode 1)

(defmacro custom-persp (name &rest body)
  `(let ((initialize (not (gethash ,name perspectives-hash)))
	 (current-pespective persp-curr))
     (persp-switch ,name)
     (when initialize ,@body)
     (setq persp-last persp-curr)))

(defun custom-persp/org ()
  (interactive)
  (custom-persp "@org"
	(find-file (first org-agenda-files))))	

(global-set-key (kbd "C-x x o") 'custom-persp/org)

(provide 'init-perspective)
