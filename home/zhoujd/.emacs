;;;This is .emacs for zhoujd.
(package-initialize)

(defvar zzemacs-path "~/zzemacs")
(if (file-exists-p (concat zzemacs-path "/.emacs"))
    (load-file (concat zzemacs-path "/.emacs"))
    (message "zzemacs has not install"))
