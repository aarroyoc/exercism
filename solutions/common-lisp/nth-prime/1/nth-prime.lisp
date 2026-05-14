(defpackage :nth-prime
  (:use :cl)
  (:export :find-prime))

(in-package :nth-prime)

(defun find-prime (number)
  (when (> number 0)
    (let ((current 1)
          (test-prime 2))
         (loop while (< current number)
               do (when (prime? (incf test-prime))
                    (incf current)))
         test-prime)))
              
(defun prime? (number)
  (notany #'(lambda (x) (zerop (mod number x))) (loop for i from 2 to (sqrt number) collect i)))
        