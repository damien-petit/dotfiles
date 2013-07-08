(add-to-list 'load-path "~/.dotfiles/.emacs.d")

;; remove the toolbar and menu bar
(tool-bar-mode -1)
(menu-bar-mode -1)

;; backup in temporary directory
(setq backup-directory-alist
      `((".*" . ,temporary-file-directory)))
(setq auto-save-file-name-transforms
      `((".*" ,temporary-file-directory t)))

;; no startup message or splash screen
(setq inhibit-splash-screen t
      inhibit-startup-message t
      inhibit-startup-echo-area-message t)

;; show line numbers
(line-number-mode t)

;; show column number in status bar
(column-number-mode 1)

;; highlight characters after 80 columns
(setq whitespace-style '(face trailing lines-tail space-before-tab
                              space-after-tab))

;; use UTF-8 encoding
(setq locale-coding-system 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(set-selection-coding-system 'utf-8)
(prefer-coding-system 'utf-8)

;; follow symlinks to version controlled files
(setq vc-follow-symlinks t)

;; transparently open compressed files
(auto-compression-mode t)

;; default to unified diffs
(setq diff-switches "-u -w")

;; keep things in the same window
(setq pop-up-windows nil)
(add-to-list 'same-window-buffer-names "*Help*")
(add-to-list 'same-window-buffer-names "*Apropos*")
(add-to-list 'same-window-buffer-names "*Summary*")

;; enable flyspell in C++
(add-hook 'c++-mode-hook
          (lambda ()
            (flyspell-prog-mode)
	    ))