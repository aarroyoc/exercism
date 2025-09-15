(defpackage :lillys-lasagna
  (:use :cl)
  (:export :expected-time-in-oven
           :remaining-minutes-in-oven
           :preparation-time-in-minutes
           :elapsed-time-in-minutes))

(in-package :lillys-lasagna)

;; Define function expected-time-in-oven
(defun expected-time-in-oven ()
  "Expected time in oven"
  337)

;; Define function remaining-minutes-in-oven
(defun remaining-minutes-in-oven (running-time)
  "Calculate remaining minutes in the oven provided a running time"
  (- (expected-time-in-oven) running-time)
  )

;; Define function preparation-time-in-minutes
(defun preparation-time-in-minutes (layers)
  "Calculate how many minutes Lily spent preparing the lasagna"
  (* layers 19)
  )

;; Define function elapsed-time-in-minutes
(defun elapsed-time-in-minutes (layers running-time)
  "Calculate how much time have been spend on preparing the lasagna"
  (+ running-time (preparation-time-in-minutes layers))
  )