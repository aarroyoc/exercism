;;; armstrong-numbers.el --- armstrong-numbers Exercise (exercism)  -*- lexical-binding: t; -*-

;;; Commentary:

;;; Code:


(defun armstrong-p (n)
 (let ((d (digits n))
       (sum 0))
      (dolist (i d)
        (setq sum (+ sum (expt i (length d)))))
      (= sum n)))

(defun digits (n)
  (if (< n 10)
      (list n)
    (cons (mod n 10) (digits (/ n 10)))))

(provide 'armstrong-numbers)
;;; armstrong-numbers.el ends here
