;;; pangram.el --- Pangram (exercism)  -*- lexical-binding: t; -*-

;;; Commentary:

;;; Code:
(defconst letters (string-to-list "abcdefghijklmnopqrstuvwxyz"))

(defun pangramp (str)
  (let ((str-l (string-to-list (downcase str))))
    (seq-every-p #'(lambda (c) (seq-contains-p str-l c)) letters)))


(provide 'pangram)
;;; pangram.el ends here
