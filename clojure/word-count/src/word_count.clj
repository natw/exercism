(ns word-count
  (:require [clojure.string :as string]))

(defn word-count
  [sentence]
  (let [words (string/split (string/lower-case sentence) #"[^\w']+")]
    ((fn wc [ws]
       (cond
         (empty? ws) {}
         :else (merge-with + {(first ws) 1} (wc (rest ws))))) words)))
