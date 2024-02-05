;;#-quicklisp
;; A big thank you to Phundrak (https://config.phundrak.com/) for his config
;; examples.

(let
	(
		(quicklisp-init
			(merge-pathnames "quicklisp/setup.lisp" (user-homedir-pathname))
		)
	)
	(when (probe-file quicklisp-init)
		(load quicklisp-init)
	)
)

(in-package :stumpwm)

(setf *default-package* :stumpwm)

;; Gentoo's StumpWM module dir.
(set-module-dir "/usr/share/common-lisp/source/stumpwm-contrib/")

(setf *startup-message* nil)

(load "~/.stumpwm.d/aliases_handler.lisp")
(load "~/.stumpwm.d/numpad_mode_keybindings.lisp")
(load "~/.stumpwm.d/programs_keybindings.lisp")
(load "~/.stumpwm.d/misc_keybindings.lisp")
(load "~/.stumpwm.d/theme_colors.lisp")
(load "~/.stumpwm.d/windows.lisp")
(load "~/.stumpwm.d/modeline.lisp")
(load "~/.stumpwm.d/mouse.lisp")

(sb-ext:run-program "picom"
	'(
		"-b"
		"--backend" "glx"
		"--no-fading-openclose"
		"-D" "3" "-i" "1.0"
	)
	:search t
	:wait nil
)
(sb-ext:run-program "gentoo-pipewire-launcher" '() :search t :wait nil)
(run-shell-command "/home/nsensfel/scripts/nsensfel_startup.sh")
