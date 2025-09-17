(defpackage :gigasecond-anniversary
  (:use :cl)
  (:export :from))
(in-package :gigasecond-anniversary)

(defun from (year month day hour minute second)
  (multiple-value-bind (a b c d e f) (decode-universal-time (+ 1000000000 (encode-universal-time second minute hour day month year)))
    (list f e d c b a)))
