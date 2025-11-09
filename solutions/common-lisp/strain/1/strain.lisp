(defpackage :strain
  (:use :cl)
  (:export :keep :discard))

(in-package :strain)

(defun keep (keep-p elements)
  "Returns a sublist of elements according to a given predicate."
  (if (zerop (length elements))
      '()
      (if (funcall keep-p (car elements))
          (cons (car elements) (keep keep-p (cdr elements)))
          (keep keep-p (cdr elements)))))

(defun discard (discard-p elements)
  "Returns a sublist of elements not matching a given predicate."
  (if (zerop (length elements))
      '()
      (if (funcall discard-p (car elements))
          (discard discard-p (cdr elements))
          (cons (car elements) (discard discard-p (cdr elements))))))
