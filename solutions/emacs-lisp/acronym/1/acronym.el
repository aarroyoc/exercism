;;; acronym.el --- Acronym (exercism)  -*- lexical-binding: t; -*-

;;; Commentary:

;;; Code:
(defun first-letter-upcase (str)
  (char-to-string (upcase (string-to-char str))))

(defun clean-str (str)
  (replace-regexp-in-string "[^A-Za-z ]" "" (string-replace "-" " " str)))

(defun acronym (phrase)
 (string-join (mapcar #'first-letter-upcase 
                      (seq-remove #'string-empty-p
                                  (split-string (clean-str phrase) " ")))))

(provide 'acronym)
;;; acronym.el ends here
