;;; raindrops.el --- Raindrops (exercism)  -*- lexical-binding: t; -*-

;;; Commentary:

;;; Code:


(defun convert (n)
  (let ((str ""))
       (when (zerop (mod n 3))
         (setq str "Pling"))
       (when (zerop (mod n 5))
         (setq str (concat str "Plang")))
       (when (zerop (mod n 7))
         (setq str (concat str "Plong")))
       (if (equal str "")
           (format "%d" n)
           str)))


(provide 'raindrops)
;;; raindrops.el ends here
