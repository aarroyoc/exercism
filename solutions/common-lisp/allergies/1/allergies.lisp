(defpackage :allergies
  (:use :cl)
  (:shadow :list)
  (:export :allergic-to-p :list))

(in-package :allergies)

(defparameter *allergen-scores* '(
                                  ("eggs" . 1)
                                  ("peanuts" . 2)
                                  ("shellfish" . 4)
                                  ("strawberries" . 8)
                                  ("tomatoes" . 16)
                                  ("chocolate" . 32)
                                  ("pollen" . 64)
                                  ("cats" . 128)
))

(defun allergic-to-p (score allergen)
  "Returns true if given allergy score includes given allergen."
  (when (position allergen (list score) :test #'string=) :t))

(defun list (score)
  "Returns a list of allergens for a given allergy score."
  (let ((real-score (mod score 256))
        (present-allergens '())
        (sorted-allergens (sort (copy-seq *allergen-scores*) #'> :key #'cdr))
        (current-score 0))
       (dolist (allergen sorted-allergens present-allergens)
         (when (and (>= real-score (cdr allergen)) (>= real-score (+ current-score (cdr allergen))))
           (push (car allergen) present-allergens)
           (setq current-score (+ (cdr allergen) current-score))))))
       
