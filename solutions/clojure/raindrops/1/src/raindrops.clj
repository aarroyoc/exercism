(ns raindrops)

(defn div3 [num]
  (if (zero? (mod num 3))
    "Pling"
    ""))

(defn div5 [num s]
  (if (zero? (mod num 5))
    (str s "Plang")
    s))

(defn div7 [num s]
  (if (zero? (mod num 7))
    (str s "Plong")
    s))

(defn convert
  "Converts a number to its corresponding string of raindrop sounds."
  [num]
  (let [a (div3 num)
        b (div5 num a)
        c (div7 num b)]
    (if (zero? (count c))
      (str num)
      c)))
