(defpackage :leap
  (:use :cl)
  (:export :leap-year-p))

(in-package :leap)

(defun leap-year-p (year)
  (let ((divisible-by-4 (= (mod year 4) 0))
        (divisible-by-100 (= (mod year 100) 0))
        (divisible-by-400 (= (mod year 400) 0)))
       (when divisible-by-4
         (if divisible-by-100
             (if divisible-by-400 t nil)
             t))))
        
      
