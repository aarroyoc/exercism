(ns resistor-color-duo)

(def color-code {"black" 0,
                 "brown" 1, 
                 "red" 2,
                 "orange" 3,
                 "yellow" 4,
                 "green" 5,
                 "blue" 6,
                 "violet" 7,
                 "grey" 8,
                 "white" 9})

(defn resistor-value
  "Returns the resistor value based on the given colors."
  [colors]
  (let [ [x y] (map #(get color-code %) (take 2 colors))]
    (+ (* 10 x) y)))
