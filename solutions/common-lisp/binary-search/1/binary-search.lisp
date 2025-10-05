(defpackage :binary-search
  (:use :cl)
  (:export :binary-find :value-error))

(in-package :binary-search)

(defun binary-find (arr el)
  (when (not (zerop (length arr)))
    (binary-find-aux arr el 0 (- (length arr) 1))))

(defun binary-find-aux (arr el start end)
  (if (= start end)
      (when (= (aref arr start) el)
          start)
      (let* ((medium (floor (+ start end) 2))
             (medium-value (aref arr medium))
             )
           (cond
             ((= medium-value el) medium)
             ((and (> medium-value el) (> medium start)) (binary-find-aux arr el start (- medium 1)))
             ((and (< medium-value el) (< medium end)) (binary-find-aux arr el (+ 1 medium) end))))))
      
       
