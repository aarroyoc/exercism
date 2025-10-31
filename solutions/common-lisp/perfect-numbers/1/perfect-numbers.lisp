(defpackage :perfect-numbers
  (:use :cl)
  (:export :classify))

(in-package :perfect-numbers)

(defun classify (number)
  (when (> number 0)
    (let ((factorsum (apply #'+ (factors number))))
         (cond
           ((= factorsum number) "perfect")
           ((< factorsum number) "deficient")
           ((> factorsum number) "abundant")))))

(defun factors (number)
  (loop for i from 1 below number 
        when (zerop (mod number i))
        collect i))