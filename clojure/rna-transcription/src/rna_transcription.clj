(ns rna-transcription
  (:require [clojure.string :as string]))

(defn to-rna
  [dna-string]
  (assert (re-matches #"[GATC]+" dna-string))
  (string/join "" (replace {\G \C, \C \G, \T \A, \A \U} dna-string)))
