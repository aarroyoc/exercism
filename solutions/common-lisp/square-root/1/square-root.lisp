(defpackage :square-root
  (:use :cl)
  (:export :square-root))

(in-package :square-root)

(defun square-root (radicand)
  (binary-search #'(lambda (x) (* x x)) radicand 1 radicand))

(defun binary-search (test-fn target-result min max)
  (let* ((mid (floor (/ (+ min max) 2)))
        (test-result (funcall test-fn mid)))
       (cond
           ((= test-result target-result) mid)
           ((> test-result target-result) (binary-search test-fn target-result min (- mid 1)))
           ((< test-result target-result) (binary-search test-fn target-result (+ mid 1) max)))))
