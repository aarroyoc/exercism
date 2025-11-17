;;; hamming.el --- Hamming (exercism)  -*- lexical-binding: t; -*-

;;; Commentary:

;;; Code:


(defun hamming-distance (dna1 dna2)
  (when (not (= (length dna1) (length dna2)))
    (error "DNA strands have different lengths"))
  (let (
        (h 0)
        (i 0)
        (l (length dna1))
        (l1 (string-to-list dna1))
        (l2 (string-to-list dna2)))
       (while (< i l)
              (unless (eql (nth i l1) (nth i l2))
                  (setf h (+ h 1)))
              (setf i (+ i 1)))
       h))
              


(provide 'hamming)
;;; hamming.el ends here
