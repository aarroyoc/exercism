(ns elyses-destructured-enchantments)

(defn first-card
  "Returns the first card from deck."
  [deck]
  (let [[card & extra] deck]
    card)
)

(defn second-card
  "Returns the second card from deck."
  [deck]
  (let [[_ snd & extra] deck]
    snd)
)

(defn swap-top-two-cards
  "Returns the deck with first two items reversed."
  [deck]
  (let [[fst snd & extra] deck]
    (concat [snd fst] extra))
)

(defn discard-top-card
  "Returns a sequence containing the first card and
   a sequence of the remaining cards in the deck."
  [deck]
  (let [[fst & extra] deck]
    [fst extra])
)

(def face-cards
  ["jack" "queen" "king"])

(defn insert-face-cards
  "Returns the deck with face cards between its head and tail."
  [deck]
  (if (empty? deck)
    face-cards
  (let [[fst & extra] deck]
    (concat [fst] face-cards extra)))
)
