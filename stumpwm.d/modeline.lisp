;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;; MODELINE ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Defines the modeline

(in-package :stumpwm)

;; Variables from "7. The Mode Line"

;; Specifies where the mode line is displayed. Valid values are :top and
;; :bottom.
(setf *mode-line-position* :top)

;; Specifies how thick the mode line’s border will be. Integer value.
(setf *mode-line-border-width* 1)

;; Specifies the number of padding pixels between the text and the side of the
;; mode line. Integer value.
(setf *mode-line-pad-x* 5)

;; The number of padding pixels between the modeline text and the top/bottom of
;; the modeline. Integer value.
(setf *mode-line-pad-y* 2)

;; The modeline updates after each command, when a new window appears or an
;; existing one disappears, and on a timer. This variable controls how many
;; seconds elapse between each update. If this variable is changed while the
;; modeline is visible, you must toggle the modeline to update timer.
(setf *mode-line-timeout* 5)
