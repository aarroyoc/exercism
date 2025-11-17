;;; allergies.el --- Allergies Exercise (exercism)  -*- lexical-binding: t; -*-

;;; Commentary:

;;; Code:

(defvar *allergens* '(
                      ("eggs" . 1)
                      ("peanuts" . 2)
                      ("shellfish" . 4)
                      ("strawberries" . 8)
                      ("tomatoes" . 16)
                      ("chocolate" . 32)
                      ("pollen" . 64)
                      ("cats" . 128)))

(defun allergen-list (score)
  (let ((a '()))
       (nreverse (dolist (i *allergens* a)
                   (when (allergic-to-p score (car i))
                     (push (car i) a))))))


(defun allergic-to-p (score allergen)
  (when (not (zerop (logand score
                (cdr (assoc allergen *allergens*)))))
    t))

(provide 'allergies)
;;; allergies.el ends here
