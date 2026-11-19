(ns squeaky-clean
  (:require [clojure.string :as str]))

(defn camel-case [s]
  (let [blocks (str/split s #"-")]
    (if (= 1 (count blocks))
      (first blocks)
      (apply str
             (cons (first blocks)
                   (map (fn [b] (str (str/upper-case (first b)) (apply str (rest b))))
                    (rest blocks)))))))

(defn clean
  [s]
  (apply str 
    (filter
     (fn [x] (and
              (or (< (int x) 945) (> (int x) 969))
              (or (Character/isLetter x) (= x \_))))
     (camel-case
       (apply str
              (map
               (fn [x] (if (Character/isISOControl x) "CTRL" x))
               (str/replace s #" " "_"))))))
  )
