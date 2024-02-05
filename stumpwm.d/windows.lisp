;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;; FRAMES ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Defines frames behavior

(in-package :stumpwm)

(setf main-border-width 1)

;;;; Windows ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Variables listed in "5.2 Customizing Window Appearance"

;; The width in pixels given to the borders of windows with maxsize or ratio
;; hints.
(setf *maxsize-border-width* main-border-width)

;; The width in pixels given to the borders of transient or pop-up windows.
(setf *transient-border-width* main-border-width)

;; The width in pixels given to the borders of regular windows.
(setf *normal-border-width* main-border-width)

;; This controls the appearance of the border around windows. valid values are:
;; - :thick
;; - :thin
;; - :tight
;; - :none
(setf *window-border-style* :thin)
