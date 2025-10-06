(defpackage :armstrong-numbers
  (:use :cl)
  (:export :armstrong-number-p))
(in-package :armstrong-numbers)

(defun armstrong-number-p (number)
  (when (= number (armstrong number)) t))

(defun armstrong (number)
  (let ((ds (digits number)))
       (reduce #'+ 
               (mapcar #'(lambda (x)
                                 (expt x (length ds)))
                       ds))))
  
(defun digits (number)
  (if (< number 10)
      (list number)
      (multiple-value-bind (c m) (floor number 10)
        (append (digits c) (list m)))))
