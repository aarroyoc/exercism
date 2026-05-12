(defpackage :matching-brackets
  (:use :cl)
  (:export :pairedp))

(in-package :matching-brackets)

(defun pairedp (value)
  (zerop 
   (length 
    (reduce #'pair-brackets value :initial-value '()))))

(defun opposite-bracket (c)
  (case c
    (#\( #\))
    (#\[ #\])
    (#\{ #\})
    (otherwise #\Space)))
    

(defun pair-brackets (current char)
  (cond
    ((char= char #\() (cons char current))
    ((char= char #\[) (cons char current))
    ((char= char #\{) (cons char current))
    ((char= char (opposite-bracket (car current))) (cdr current))
    ((char= char #\)) (cons char current))
    ((char= char #\]) (cons char current))
    ((char= char #\}) (cons char current))
    (t current)))
    
