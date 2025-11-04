(ns bird-watcher)

(def last-week 
  [0 2 5 3 7 8 4])

(defn today [birds]
  (get birds 6))

(defn inc-bird [birds]
  (assoc birds 6 (+ 1 (get birds 6))))

(defn day-without-birds? [birds]
  (not (every? pos? birds)))

(defn n-days-count [birds n]
  (reduce + (take n birds)))

(defn busy-day [birds]
  (>= birds 5))

(defn busy-days [birds]
  (count (filter busy-day birds)))

(defn odd-week? [birds]
  (= birds [1 0 1 0 1 0 1]))
