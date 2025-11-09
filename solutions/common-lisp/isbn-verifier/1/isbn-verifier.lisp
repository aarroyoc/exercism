(defpackage :isbn-verifier
  (:use :cl)
  (:export :validp))

(in-package :isbn-verifier)

(defun validp (isbn)
  (let ((parsed (parse-isbn isbn)))
    (when (= 10 (length parsed))
      (let* ((products (mapcar #'* (parse-isbn isbn) '(10 9 8 7 6 5 4 3 2 1)))
             (sum (reduce #'+ products))
             (rs (mod sum 11)))
            (when (zerop rs) t)))))

(defun parse-isbn (isbn)
  (loop for c across (remove #\- isbn)
        for n = (digit-char-p c)
        collect (if n
                    n
                    (if (and (char= c #\X)
                             (= (position #\X isbn) (- (length isbn) 1)))
                        10
                        (return nil)))))
