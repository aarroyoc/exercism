(defpackage :two-fer
  (:use :cl)
  (:export :twofer))
(in-package :two-fer)

(defun twofer (&optional name)
  (if name
      (format nil "One for ~a, one for me." name)
      "One for you, one for me."))
