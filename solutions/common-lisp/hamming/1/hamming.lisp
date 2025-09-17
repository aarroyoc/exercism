(defpackage :hamming
  (:use :cl)
  (:export :distance))

(in-package :hamming)

(defun distance (strand1 strand2)
  (when (eq (length strand1) (length strand2))
    (distance-aux strand1 strand2 (length strand1))))

(defun distance-aux (strand1 strand2 char-num)
  (if (eq char-num 0)
      0
      (+
       (distance-aux strand1 strand2 (- char-num 1))
       (if (char= (char strand1 (- char-num 1)) (char strand2 (- char-num 1)))
           0
           1))))
