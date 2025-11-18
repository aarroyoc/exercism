(defpackage :pangram
  (:use :cl)
  (:export :pangramp))

(in-package :pangram)

(defun pangramp (sentence)
  (loop for c across (string-upcase sentence)
        with set = (list)
        do (when (and (>= (char-code c) (char-code #\A))
                      (<= (char-code c) (char-code #\Z)))
             (setf set (adjoin c set)))
        finally (return (= (length set) 26))))
