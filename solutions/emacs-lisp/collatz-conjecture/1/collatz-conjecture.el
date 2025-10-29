;;; collatz-conjecture.el --- Collatz Conjecture (exercism)  -*- lexical-binding: t; -*-
(require 'cl-lib)
;;; Commentary:

;;; Code:

(defun steps (number)
  "Count the steps to reach 1 using the Collatz conjecture."
  (if (> number 0)
      (let ((iterations 0)
            (n number))
           (while (> n 1)
                  (if (cl-evenp n)
                      (setq n (/ n 2))
                      (setq n (+ 1 (* 3 n))))
                  (setq iterations (+ iterations 1)))
           iterations)
      (error "number should be positive")))

(provide 'collatz-conjecture)
;;; collatz-conjecture.el ends here
