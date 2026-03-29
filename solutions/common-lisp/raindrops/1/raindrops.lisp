(defpackage :raindrops
  (:use :cl)
  (:export :convert))

(in-package :raindrops)

(defun convert (number)
  (let ((text ""))
       (when (zerop (mod number 3))
         (setf text (format nil "~a~a" text "Pling")))
       (when (zerop (mod number 5))
         (setf text (format nil "~a~a" text "Plang")))
       (when (zerop (mod number 7))
         (setf text (format nil "~a~a" text "Plong" text)))
       (when (equal "" text)
         (setf text (format nil "~a" number)))
       text))
