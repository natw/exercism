(ns anagram
  (:require [clojure.string :as string]))

(defn are-anagrams
  [w1 w2] (let [lw1 (string/lower-case w1) lw2 (string/lower-case w2)]
            (and (= (sort lw1) (sort lw2))
                 (not= lw1 lw2))))

(defn anagrams-for
  [word, candidates]
  (filter (partial are-anagrams word) candidates))
