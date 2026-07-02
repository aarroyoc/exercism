(defpackage :pascals-triangle
  (:use :cl)
  (:export :rows))

(in-package :pascals-triangle)

(defun rows (count)
  (cond
    ((< count 0) nil)
    ((= count 0) '())
    ((= count 1) '((1)))
    (t (let ((previous (reverse (rows (- count 1)))))
            (reverse (cons 
                        (loop for i from 0 to (- count 1)
                              collect (if (or (zerop i) (= i (- count 1)))
                                       1 
                                       (+ (nth (- i 1) (car previous))
                                          (nth i (car previous)))))
                        previous))))))
