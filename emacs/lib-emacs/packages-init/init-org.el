(require 'org)
(add-to-list 'auto-mode-alist
	     '("\\.\\(org\\|org-archive\\|txt\\)$" . org-mode))

(global-set-key (kbd "C-c l") 'org-store-link)
(global-set-key (kbd "C-c a") 'org-agenda)
(global-set-key (kbd "C-c b") 'org-iswitchb)

(setq org-directory "~/org/")

(setq org-agenda-files (list (concat org-directory "todo.org")
			     (concat org-directory "research.org")
			     (concat org-directory "irl.org")
			     (concat org-directory "taduty.org")
			     (concat org-directory "reading.org")
			     (concat org-directory "misc.org")))



(setq org-default-notes-file (concat org-directory "capture.org"))



(defvar custom-org-project-file-path
  (concat org-directory "projects/"))
  
(defvar custom-org-research-file-path
  (concat org-directory "research/"))

(defun custom-org-file-list (path)
  (directory-files path nil "\\.org$"))
(defun custom-org-project-files ()
  (custom-org-file-list custom-org-project-file-path))
(defun custom-org-research-files ()
  (custom-org-file-list custom-org-research-file-path))

(defun custom-org-chooser (filelist prompt)
  (let ((completing-read-func
	 (if (null ido-mode)
	     'completing-read
	   'ido-completing-read)))
    (funcall completing-read-func
	     prompt
	     (funcall filelist)
	     nil
	     t)))
(defun custom-org-research-chooser ()
  (custom-org-chooser #'custom-org-research-files "Research: "))

(defun custom-org-project-chooser ()
  (custom-org-chooser #'custom-org-project-files "Project: "))


(defun custom-org-file (chooser path)
  (find-file-noselect (concat path (funcall chooser)))
  (goto-char (point-min))
  (re-search-forward "^\*\s*.+\n" nil t)
  (newline 1))

(defun custom-org-project-file ()
  (custom-org-file #'custom-org-project-chooser custom-org-project-file-path))

(defun custom-org-research-file ()
  (custom-org-file #'custom-org-research-chooser custom-org-research-file-path))


(setq org-capture-templates
      '(("t" "Todo" entry (file+headline org-default-notes-file "Tasks")
	 "* TODO %?\n %t")

	("p" "Project" entry (function custom-org-project-file)
	 "** TODO %?\n %T")
	 
	("r" "Research" entry (function custom-org-research-file)
	 "** TODO %?\n %T")
	))


(define-key global-map (kbd "C-c c")
  (lambda ()
    (interactive)
    (org-capture)))

(provide 'init-org)
