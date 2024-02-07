;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;; MISC KEYBINDINGS ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(in-package :stumpwm)

(define-key
	*root-map*
	(kbd "F12")
	"exec import -window root /tmp/screenshot.png"
)

(defcommand jj-toggle-mode-line () ()
	"Toggle the mode line."
	(toggle-mode-line (current-screen) (current-head))
)

(define-key *root-map* (kbd "-") "jj-toggle-mode-line")

(define-key *root-map* (kbd "quoteleft") "gnew")
(define-key *root-map* (kbd "~") "gkill")
