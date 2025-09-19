(defpackage :reporting-for-duty
  (:use :cl)
  (:export :format-quarter-value :format-two-quarters
           :format-two-quarters-for-reading))

(in-package :reporting-for-duty)

;; Define format-quarter-value function.
(defun format-quarter-value (str num)
  (format nil "The value ~a quarter: ~a" str num))
;; Define format-two-quarters function.
(defun format-two-quarters (stream quarter1-label quarter1-num quarter2-label quarter2-num)
  (format stream "~%The value ~a quarter: ~a~&The value ~a quarter: ~a~%" quarter1-label quarter1-num quarter2-label quarter2-num))

;; Define format-two-quarters-for-reading function.
(defun format-two-quarters-for-reading (stream quarter1-label quarter1-num quarter2-label quarter2-num)
  (format stream "~s" (list (format-quarter-value quarter1-label quarter1-num) (format-quarter-value quarter2-label quarter2-num))))
