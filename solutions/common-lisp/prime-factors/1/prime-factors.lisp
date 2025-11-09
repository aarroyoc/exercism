(defpackage :prime-factors
  (:use :cl)
  (:export :factors))

(in-package :prime-factors)

(defun factors (n)
  (let ((prime-factors '())
        (current-test-factor 2)
        (rest n))
       (loop while (not (= rest 1))
             do (progn
                  (if (zerop (mod rest current-test-factor))
                      (progn
                        (push current-test-factor prime-factors)
                        (setf rest (/ rest current-test-factor)))
                      (setf current-test-factor (+ current-test-factor 1))))
             finally (return (nreverse prime-factors)))))
