(defpackage :eliuds-eggs
  (:use :cl)
  (:export :egg-count))

(in-package :eliuds-eggs)

(defun egg-count (number)
  (let ((zeros 0)
        (n number))
       (loop while (> n 1)
             do (multiple-value-bind (d r) (floor n 2)
                  (setf n d)
                  (setf zeros (+ zeros r)))
             finally (return (+ zeros n)))))
      
