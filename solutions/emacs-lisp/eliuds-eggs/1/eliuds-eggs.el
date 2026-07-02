;;; eliuds-eggs.el --- Eliud's Eggs (exercism)  -*- lexical-binding: t; -*-

;;; Commentary:

;;; Code:


(defun egg-count (number)
 (let ((count 0)
       (pos 1))
      (while (>= number pos)
         (when (> (logand number pos) 0)
           (setq count (+ count 1)))
         (setq pos (* 2 pos)))
      count))


(provide 'eliuds-eggs)
;;; eliuds-eggs.el ends here

