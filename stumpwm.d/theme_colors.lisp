;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;; COLORS ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Defines all colors

(in-package :stumpwm)

(defvar gruvbox-dark
	(list
		"#1D2021"
		"#282828"
		"#32302F"
		"#3C3836"
		"#504945"
		"#665C54"
		"#7C6F64"
	)
)

(defvar gruvbox-gray
	(list
		"#928374"
	)
)

(defvar gruvbox-light
	(list
		"#928374"
		"#F9F5D7"
		"#FBF1C7"
		"#F2E5BC"
		"#EBDBB2"
		"#D5C4A1"
		"#BDAE93"
		"#A89984"
	)
)

(defvar gruvbox-red
	(list
		"#FB4934"
		"#CC241D"
		"#9D0006"
	)
)

(defvar gruvbox-green
	(list
		"#B8BB26"
		"#98971A"
		"#79740E"
	)
)

(defvar gruvbox-yellow
	(list
		"#FABD2F"
		"#D79921"
		"#B57614"
	)
)

(defvar gruvbox-blue
	(list
		"#83A598"
		"#458588"
		"#076678"
	)
)

(defvar gruvbox-purple
	(list
		"#D3869B"
		"#B16286"
		"#8F3F71"
	)
)

(defvar gruvbox-aqua
	(list
		"#8EC07C"
		"#689D6A"
		"#427B58"
	)
)

(defvar gruvbox-orange
	(list
		"#FE8019"
		"#D65D0E"
	)
)

;; Messages font color
(set-fg-color      (car gruvbox-aqua))

(set-bg-color      (cadr gruvbox-dark))
(set-border-color  (cadddr (cdr gruvbox-dark)))
(set-win-bg-color  (cadr gruvbox-dark))
(set-focus-color   (cadr gruvbox-aqua))
(set-unfocus-color (car gruvbox-dark))

(setf *default-bg-color* (cadr gruvbox-dark))
(setf *draw-in-color* (car gruvbox-aqua))
;;(setf *hidden-window-color* )
(setf *key-seq-color* (car gruvbox-green))
(setf *text-color* (car gruvbox-purple))

(setf *mode-line-background-color* (cadr gruvbox-dark))
(setf *mode-line-foreground-color* (caddr gruvbox-aqua))
(setf *mode-line-border-color*     (cadddr (cdr gruvbox-dark)))

(setf *colors*
	(list
		(cadr gruvbox-dark)  ; black
		(car gruvbox-red)    ; red
		(car gruvbox-green)  ; green
		(car gruvbox-yellow) ; yellow
		(car gruvbox-blue)   ; blue
		(car gruvbox-purple) ; magenta
		(car gruvbox-aqua)   ; cyan
		(cadr gruvbox-light) ; white
		(car gruvbox-green)  ; green
		(car gruvbox-gray)   ; gray
	)
)

(update-color-map (current-screen))
