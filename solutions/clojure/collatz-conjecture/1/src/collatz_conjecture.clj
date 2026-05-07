(ns collatz-conjecture)

(defn collatz-rule [n]
  (if (even? n)
      (/ n 2)
    (inc (* n 3))))

(defn collatz
  "Returns the number of steps for num to reach 1
  according to the Collatz Conjecture."
  [num]
  (loop [steps 0 n num]
    (if (= n 1)
        steps
      (recur (inc steps) (collatz-rule n)))))

