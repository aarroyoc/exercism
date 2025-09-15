(defpackage :space-age
  (:use :cl)
  (:export :on-mercury
           :on-venus
           :on-earth
           :on-mars
           :on-jupiter
           :on-saturn
           :on-uranus
           :on-neptune))

(in-package :space-age)

(defun on-earth (x) (/ x 31557600))

(defun on-mercury (x)
  (/ (on-earth x) 0.2408467)
  )

(defun on-venus (x)
  (/ (on-earth x) 0.61519726)
  )

(defun on-mars (x)
  (/ (on-earth x) 1.8808158)
  )

(defun on-jupiter (x)
  (/ (on-earth x) 11.862615)
  )

(defun on-saturn (x)
  (/ (on-earth x) 29.447498)
  )

(defun on-uranus (x)
  (/ (on-earth x) 84.016846)
  )

(defun on-neptune (x)
  (/ (on-earth x) 164.791132)
  )