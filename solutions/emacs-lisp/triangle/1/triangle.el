;;; triangle.el --- Triangle (exercism)  -*- lexical-binding: t; -*-

;;; Commentary:

;;; Code:


(defun equilateralp (sides)
  (pcase sides
    ('(0 0 0) nil)
    ((pred (not trianglep)) nil)
    (`(,a ,b ,c) (and (= a b) (= b c)))
    (_ nil)))

(defun isoscelesp (sides)
  (pcase sides
    ('(0 0 0) nil)
    ((pred (not trianglep)) nil)
    (`(,a ,b ,c) (or (= a b)
                     (= a c)
                     (= b c)))
    (_ nil)))

(defun scalenep (sides)
  (pcase sides
    ('(0 0 0) nil)
    ((pred (not trianglep)) nil)
    (`(,a ,b ,c) (and (not (= a b))
                      (not (= a c))
                      (not (= b c))))
    (_ nil)))

(defun trianglep (sides)
  (pcase sides
    (`(,a ,b ,c) (and (>= (+ a b) c)
                      (>= (+ b c) a)
                      (>= (+ a c) b)))))

(provide 'triangle)
;;; triangle.el ends here
