;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;; PROGRAM KEYBINDINGS ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(in-package :stumpwm)

(define-key *root-map* (kbd "t") "exec urxvtc")
(define-key *root-map* (kbd "q") "exec firefox")
(define-key *root-map* (kbd "h") "exec urxvtc -e htop")
(define-key *root-map* (kbd "b") "eval (run-shell-command \"acpi\" t)")
