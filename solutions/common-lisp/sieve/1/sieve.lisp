(defpackage :sieve
  (:use :cl)
  (:export :primes-to)
  (:documentation "Generates a list of primes up to a given limit."))

(in-package :sieve)

(defun primes-to (n)
  "List primes up to `n' using sieve of Eratosthenes."
  (let ((numbers (loop for i from 2 to n collect i)))
       (primes-sieve numbers)))

(defun primes-sieve (numbers)
  (if (zerop (length numbers))
      '()
      (cons 
       (car numbers)
       (primes-sieve 
        (remove-if 
         #'(lambda (n) 
                   (zerop 
                    (mod n (car numbers)))) 
         (cdr numbers))))))
