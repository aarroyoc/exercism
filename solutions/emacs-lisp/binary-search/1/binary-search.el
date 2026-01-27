;;; binary-search.el --- Binary Search (exercism)  -*- lexical-binding: t; -*-

;;; Commentary:

;;; Code:


(defun find-binary (array value)
  (let ((min 0)
        (max (- (seq-length array) 1))
        (found nil))
    (while (and
            (not found)
            (not (< max min)))
              (let* ((current-pos (+ min (floor (- max min) 2)))
                     (current-value (seq-elt array current-pos)))
                    (if (= current-value value)
                        (setq found current-pos)
                        (if (> current-value value)
                            (setq max (- current-pos 1))
                            (setq min (+ current-pos 1))))))
    found))


(provide 'binary-search)
;;; binary-search.el ends here
