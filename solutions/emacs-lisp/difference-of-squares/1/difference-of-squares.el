;;; difference-of-squares.el --- Difference of Squares (exercism)  -*- lexical-binding: t; -*-

;;; Commentary:

(defun sum-of-squares (n)
  (seq-reduce (lambda (acc i)
                      (+ acc (* i i))) 
              (number-sequence 1 n)
              0))

(defun square-of-sum (n)
  (let ((sum (seq-reduce #'+ (number-sequence 1 n) 0)))
       (* sum sum)))

(defun difference (n)
  (- (square-of-sum n) (sum-of-squares n)))

(provide 'difference-of-squares)
;;; difference-of-squares.el ends here
