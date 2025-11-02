(ns cars-assemble)

(def cars-per-speed 221)

(defn success-rate [speed]
  (cond
    (= speed 0) 0
    (< speed 5) 1
    (< speed 9) 0.9
    (< speed 10) 0.8
    :else 0.77))

(defn production-rate
  "Returns the assembly line's production rate per hour,
   taking into account its success rate"
  [speed]
  (* (success-rate speed) speed 221))

(defn working-items
  "Calculates how many working cars are produced per minute"
  [speed]
  (int (/ (production-rate speed) 60)))
