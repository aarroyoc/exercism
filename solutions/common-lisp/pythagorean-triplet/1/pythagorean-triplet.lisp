(defpackage :pythagorean-triplet
  (:use :cl)
  (:export :triplets-with-sum))

(in-package :pythagorean-triplet)

(defun triplets-with-sum (n)
  (loop for a from 1 below n
        nconc (loop for b from (+ a 1) below n
                    for c = (- n (+ a b))
                    when (and 
                          (= n (+ a b c))
                          (triplet a b c))
                    collect (list a b c))))

(defun triplet (a b c)
  (= (expt c 2) (+ (expt a 2) (expt b 2))))
