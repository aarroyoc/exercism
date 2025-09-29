(defpackage :sum-of-multiples
  (:use :cl)
  (:export :sum))

(in-package :sum-of-multiples)

(defun sum (factors limit)
  (if (zerop (length factors))
      0
      (let ((multiples (mapcar (lambda (factor) (multiples-of-until factor factor limit)) factors)))
       (reduce #'+ (reduce #'union multiples)))))


(defun multiples-of-until (n s limit)
  (unless (< n 1)
    (if (< n limit)
        (cons n (multiples-of-until (+ n s) s limit))
        '())))
