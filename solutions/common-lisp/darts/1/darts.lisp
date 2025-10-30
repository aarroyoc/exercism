(defpackage :darts
  (:use :cl)
  (:export :score))

(in-package :darts)

(defun score (x y)
  (let ((d (distance-to-center x y)))
       (cond
         ((<= d 1) 10)
         ((<= d 5) 5)
         ((<= d 10) 1)
         (t 0))))

(defun distance-to-center (x y)
  (sqrt (+ (* x x) (* y y))))
  
