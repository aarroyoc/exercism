(defpackage :collatz-conjecture
  (:use :cl)
  (:export :collatz))

(in-package :collatz-conjecture)

(defun collatz (n)
  (when (> n 0)
    (if (= n 1)
        0
        (+ 1 (if (evenp n)
                 (collatz (/ n 2))
                 (collatz (+ 1 (* n 3))))))))
            
          
