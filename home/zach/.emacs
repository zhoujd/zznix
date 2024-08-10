;;; The .emacs for zzemacs
(defvar zzemacs-path "/c/zznix/home/zach/zzemacs")
(if (file-exists-p (concat zzemacs-path "/.emacs"))
    (load-file (concat zzemacs-path "/.emacs"))
    (message "zzemacs has not install"))
