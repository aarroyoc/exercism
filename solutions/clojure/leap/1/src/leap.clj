(ns leap)

(defn leap-year?
  "Returns true if the given year is a leap year;
  otherwise, it returns false."
  [year]
  (and 
   (zero? (mod year 4)) 
   (or 
    (not (zero? (mod year 100))) 
    (zero? (mod year 400))))
  )
