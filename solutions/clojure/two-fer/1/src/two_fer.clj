(ns two-fer)

(defn two-fer
  "Returns what you will say as you give away the extra cookie."
  ([] "One for you, one for me.")
  ([name] (str "One for " name ", one for me.")))
