(defpackage :high-scores
  (:use :cl)
  (:export :make-high-scores-table :add-player
           :set-score :get-score :remove-player))

(in-package :high-scores)

;; Define make-high-scores-table function
(defun make-high-scores-table () (make-hash-table))

;; Define add-player function
(defun add-player (hash-table player)
  (setf (gethash player hash-table) 0))

;; Define set-score function
(defun set-score (hash-table player score)
  (setf (gethash player hash-table) score))

;; Define get-score function
(defun get-score (hash-table player)
  (gethash player hash-table 0))
;; Define remove-player function
(defun remove-player (hash-table player)
  (remhash player hash-table))
