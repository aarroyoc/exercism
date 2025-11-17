;;; two-fer.el --- Two-fer Exercise (exercism)  -*- lexical-binding: t; -*-

;;; Commentary:

(defun two-fer (&optional name)
  (if name
      (format "One for %s, one for me." name)
      "One for you, one for me."))

(provide 'two-fer)
;;; two-fer.el ends here
