(defpackage :resistor-color-duo
  (:use :cl)
  (:export :value))

(in-package :resistor-color-duo)

(defparameter *color-digits* '(
                           ("black" . 0)
                           ("brown" . 1)
                           ("red" . 2)
                           ("orange" . 3)
                           ("yellow" . 4)
                           ("green" . 5)
                           ("blue" . 6)
                           ("violet" . 7)
                           ("grey" . 8)
                           ("white" . 9)))

(defun value (colors)
  (let ((first-value (color-digit (car colors)))
        (second-value (color-digit (car (cdr colors)))))
       (+ (* first-value 10) second-value)))

(defun color-digit (color)
  (cdr (assoc color *color-digits* :test #'string=)))