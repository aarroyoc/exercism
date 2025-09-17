(defpackage :logans-numeric-partition
  (:use :cl)
  (:export :categorize-number :partition-numbers))

(in-package :logans-numeric-partition)

;; Define categorize-number function
(defun categorize-number (pairs num)
  (if (evenp num)
      (cons (car pairs) (cons num (cdr pairs)))
      (cons (cons num (car pairs)) (cdr pairs))
      ))
;; Define partition-numbers function
(defun partition-numbers (l)
  (reduce #'categorize-number l :initial-value '(() . ())))