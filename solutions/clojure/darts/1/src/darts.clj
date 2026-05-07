(ns darts)

(defn score
  "Calculates the score of a dart throw."
  [x y]
  (let [dist (Math/sqrt (+ (* x x) (* y y)))]
    (cond
      (> dist 10) 0
      (> dist 5) 1
      (> dist 1) 5
      :else 10)))
