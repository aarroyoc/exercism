;;; perfect-numbers.el --- perfect-numbers Exercise (exercism)  -*- lexical-binding: t; -*-

;;; Commentary:

(defun factors-iter (n)
  (let ((factors '())
        (i 1))
    (while (< i (sqrt n))
      (when (zerop (mod n i))
        (push i factors)
        (push (/ n i) factors))
      (setq i (+ i 1)))
    (when (and (/= n 1) 
           (= i (sqrt n)))
      (push i factors))
    (remove n factors)))

(defun classify (n)
  (if (> n 0)
      (let ((fs (apply #'+ (factors-iter n))))
        (cond
              ((= fs n) 'perfect)
              ((> fs n) 'abundant)
              ((< fs n) 'deficient)))
    (error "Classification is only possible for natural numbers")))

(provide 'perfect-numbers)
;;; perfect-numbers.el ends here
