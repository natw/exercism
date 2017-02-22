(ns beer-song
  (:require [clojure.string :as string]))

(defn pluralize-bottles
  [number]
  (cond
    (= number 0) (str "no more bottles")
    (= number 1) (str "1 bottle")
    :else (str number " bottles")))

(defn second-line
  [bottles next-num]
  (cond
    (= bottles 0) "Go to the store and buy some more, 99 bottles of beer on the wall.\n"
    :else (str "Take "
               (cond (= bottles 1) "it" :else "one")
               " down and pass it around, "
               (pluralize-bottles next-num)
               " of beer on the wall.\n")))

(defn verse
  [bottles]
  (let [next-num (- bottles 1)]
    (str (string/capitalize (pluralize-bottles bottles))
         " of beer on the wall, "
         (pluralize-bottles bottles) " of beer.\n"
         (second-line bottles next-num))))

(defn sing
  ([start] (sing start 0))
  ([start endnum] (string/join "\n" (map verse (range start (- endnum 1) -1)))))
