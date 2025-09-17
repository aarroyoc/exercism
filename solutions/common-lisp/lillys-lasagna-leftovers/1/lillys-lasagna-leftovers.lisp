(defpackage :lillys-lasagna-leftovers
  (:use :cl)
  (:export
   :preparation-time
   :remaining-minutes-in-oven
   :split-leftovers))

(in-package :lillys-lasagna-leftovers)

;; Define function preparation-time
(defun preparation-time (&rest layers) 
  (* 19 (length layers))
  )

;; Define function remaining-minutes-in-oven
(defun remaining-minutes-in-oven (&optional (mode nil mode-supplied-p))
  (if mode-supplied-p 
      (if mode
        (case mode
          (:normal 337)
          (:shorter 237)
          (:very-short 137)
          (:longer 437)
          (:very-long 537)
        )
          0)
      337
      ))
;; Define function split-leftovers
(defun split-leftovers (&key (weight nil weight-provided-p) (human 10) (alien 10))
  (if weight-provided-p
      (if weight 
          (- weight (+ human alien))
          :looks-like-someone-was-hungry
          )
      :just-split-it))