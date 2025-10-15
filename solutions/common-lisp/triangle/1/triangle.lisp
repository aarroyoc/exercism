(defpackage :triangle
  (:use :cl)
  (:export :triangle-type-p))

(in-package :triangle)

(defun triangle-type-p (type a b c)
  "Deterimines if a triangle (given by side lengths A, B, C) is of the given TYPE"
  (when (and 
         (< c (+ a b))
         (< a (+ b c))
         (< b (+ a c)))
    (case type
      (:equilateral (and 
                     (= a b)
                     (= b c)))
      (:isosceles (or
                   (= a b)
                   (= b c) 
                   (= a c)))
      (:scalene (and 
                 (not (= a b))
                 (not (= b c))
                 (not (= a c)))))))
