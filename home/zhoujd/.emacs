;;;this is .emacs for zhoujd.
(defvar zzemacs-path "c:/zznix/home/zhoujd/zzemacs")
(if (file-exists-p (concat zzemacs-path "/.emacs"))
    (load-file (concat zzemacs-path "/.emacs"))
    (message "zzemacs has not install"))