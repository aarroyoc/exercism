;;; prime-factors.el --- Prime Factors (exercism)  -*- lexical-binding: t; -*-

;;; Commentary:

;;; Code:


(defun factors (value)
  (let ((factor 2)
        (result '()))
       (while (> value 1)
              (if (zerop (mod value factor))
                  (progn
                    (setq value (/ value factor))
                    (push factor result))
                  (setq factor (+ factor 1))))
       (reverse result)))


(provide 'prime-factors)
;;; prime-factors.el ends here
