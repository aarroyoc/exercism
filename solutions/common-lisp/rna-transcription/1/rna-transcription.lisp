(defpackage :rna-transcription
  (:use :cl)
  (:export :to-rna))
(in-package :rna-transcription)

(defun to-rna (str)
  "Transcribe a string representing DNA nucleotides to RNA."
  (coerce (mapcar #'complement-nucleotide (coerce str 'list)) 'string))

(defun complement-nucleotide (n)
  (case n
    (#\G #\C)
    (#\C #\G)
    (#\T #\A)
    (#\A #\U)))
