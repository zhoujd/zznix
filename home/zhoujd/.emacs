;;;This is .emacs for zhoujd.
(defvar zzemacs-path "~/zzemacs")
(if (file-exists-p (concat zzemacs-path "/.emacs"))
    (load-file (concat zzemacs-path "/.emacs"))
    (message "zzemacs has not install"))
