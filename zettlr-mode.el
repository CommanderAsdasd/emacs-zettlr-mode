
(defcustom zettlr-mode-zettelkasten-path user-emacs-directory "Where .md files stored")
(define-derived-mode zettlr-mode markdown-mode "zettlr-mode"
  

(defun zettrl-find-random-note (args)
  "from zettlr-mode-zettelkasten-path"
  (interactive "P")
  (let* ((files (directory-files zettlr-mode-zettelkasten-path))
         (file-selected (nth (random (length files)) files))) ;; select random note from files
    (switch-to-buffer-other-window (find-file-noselect  (concat zettlr-mode-zettelkasten-path file-selected))))
  )
