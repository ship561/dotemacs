(require 'package)
(add-to-list 'package-archives
             '("marmalade" . "https://marmalade-repo.org/packages/") t)
(add-to-list 'package-archives
             '("melpa-stable" . "http://stable.melpa.org/packages/") t)
(add-to-list 'package-archives 
	     '("org" . "http://orgmode.org/elpa/") t)


(setq dotfiles-dir (file-name-directory
                    (or (buffer-file-name) load-file-name)))

(add-to-list 'load-path dotfiles-dir)

;;;(setq autoload-file (concat dotfiles-dir "loaddefs.el"))
(setq package-user-dir (concat dotfiles-dir "elpa"))
(setq custom-file (concat dotfiles-dir "custom.el"))

(load custom-file 'noerror)

(package-initialize nil)

(fset 'yes-or-no-p 'y-or-n-p)

(require 'ob-tangle)
(org-babel-load-file "~/.emacs.d/emacs-init.org")
