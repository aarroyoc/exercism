(defpackage :secret-handshake
  (:use :cl)
  (:export :commands))

(in-package :secret-handshake)

(defun commands (number)
  (let ((cmds '()))
       (when (< 0 (logand #b00001 number))
         (push "wink" cmds))
       (when (< 0 (logand #b00010 number))
         (push "double blink" cmds))
       (when (< 0 (logand #b00100 number))
         (push "close your eyes" cmds))
       (when (< 0 (logand #b01000 number))
         (push "jump" cmds))
       (if (zerop (logand #b10000 number))
           (reverse cmds)
           cmds)))
