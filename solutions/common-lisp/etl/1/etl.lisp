(defpackage :etl
  (:use :cl)
  (:export :transform))

(in-package :etl)

(defun transform (data)
  "Transforms hash values into keys with their keys as their values."
  (let ((output (make-hash-table)))
       (maphash #'(lambda (score letters)
                          (loop for letter in letters
                                do (setf (gethash (char-downcase letter) output) score))
                          ) data)
       output))
