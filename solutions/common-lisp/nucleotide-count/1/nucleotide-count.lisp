(defpackage :nucleotide-count
  (:use :cl)
  (:export :nucleotide-counts))

(in-package :nucleotide-count)

(defconstant +initial-count+ '((#\A . 0) (#\C . 0) (#\G . 0) (#\T . 0)))

(defun nucleotide-counts (strand)
  (let ((count (copy-tree +initial-count+)))
       (loop for c across strand
             do (if (assoc c count)
                    (setf (cdr (assoc c count)) (+ 1 (cdr (assoc c count))))
                    (return-from nucleotide-counts nil))
             finally (return count))))
