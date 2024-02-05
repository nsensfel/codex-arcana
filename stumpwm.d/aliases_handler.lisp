;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;; ALIASES HANDLER ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Defines functions that handle possible aliases for keys.

(in-package :stumpwm)

(defun define-prefixed-key (col prefix key command)
	(define-key col (kbd (concatenate 'string prefix key)) command)
)

(defun define-aliasable-key (aliases_collection col prefix key command)
	(let
		;; See http://clhs.lisp.se/Body/f_assocc.htm for example of assoc used
		;; here.
		( (aliases (assoc key aliases_collection :test #'equalp)) )
		(if aliases
			(map nil
				#'(lambda (alias) (define-prefixed-key col prefix alias command))
				aliases
			)
			(define-prefixed-key col prefix key command)
		)
	)
)
