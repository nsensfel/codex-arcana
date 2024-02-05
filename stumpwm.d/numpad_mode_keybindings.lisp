;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;; NUMPAD KEYBINDINGS ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Turns the numpad into a window manager control pad
;;
;; Getting one of those numpads with a big '+' key is recommended for this.

(in-package :stumpwm)

(set-prefix-key (kbd "KP_Add"))

(defvar numpad_aliases
	(list
		(list "KP_0" "KP_Insert")
		(list "KP_1" "KP_End")
		(list "KP_2" "KP_Down")
		(list "KP_3" "KP_Page_Down")
		(list "KP_4" "KP_Left")
		(list "KP_5" "KP_Begin")
		(list "KP_6" "KP_Right")
		(list "KP_7" "KP_Home")
		(list "KP_8" "KP_Up")
		(list "KP_9" "KP_Page_Up")
		;; KP_Delete and . are aliases, but the latter is not KP exclusive. :/
	)
	"Aliases for numpad keys that are different when numpad is on/off"
)

(defun define-numpad-key (col prefix key command)
	(define-aliasable-key numpad_aliases col prefix key command)
)

(defun define-numpad-top-key (prefix key command)
	(define-numpad-key *top-map* prefix key command)
)

(defun define-numpad-root-key (prefix key command)
	(define-numpad-key *root-map* prefix key command)
)

;;;; TOP MAP ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(define-numpad-top-key "" "KP_0" "windowlist")

(define-numpad-top-key ""   "KP_1" "gprev")
(define-numpad-top-key "C-" "KP_1" "gprev-with-window")
(define-numpad-top-key ""   "KP_7" "gnext")
(define-numpad-top-key "C-" "KP_7" "gnext-with-window")

(define-numpad-top-key "" "KP_3" "pull-hidden-previous")
(define-numpad-top-key "" "KP_9" "pull-hidden-next")

(define-numpad-top-key "" "KP_5" "fullscreen")

(define-numpad-top-key "" "KP_Divide"   "hsplit")
(define-numpad-top-key "" "KP_Multiply" "vsplit")
(define-numpad-top-key "" "KP_Delete"   "remove-split")

(define-numpad-top-key "C-" "KP_8" "move-window up")
(define-numpad-top-key ""   "KP_8" "move-focus up")

(define-numpad-top-key "C-" "KP_4" "move-window left")
(define-numpad-top-key ""   "KP_4" "move-focus left")

(define-numpad-top-key "C-" "KP_6" "move-window right")
(define-numpad-top-key ""   "KP_6" "move-focus right")

(define-numpad-top-key "C-" "KP_2" "move-window down")
(define-numpad-top-key ""   "KP_2" "move-focus down")

;;;; ROOT MAP ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Too dangerous to have on top-map.
(define-numpad-root-key "" "KP_Subtract" "delete")

;; To return to this control scheme after switching to another:
(define-numpad-root-key "" "KP_Add" "eval (set-prefix-key (kbd \"KP_Add\"))")
