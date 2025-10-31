(defpackage :grains
  (:use :cl)
  (:export :square :total))
(in-package :grains)

(defun square (n)
  (if (= n 1)
      1
      (* 2 (square (- n 1)))))

(defun total ()
  (loop for i from 1 to 64
        sum (square i)))
