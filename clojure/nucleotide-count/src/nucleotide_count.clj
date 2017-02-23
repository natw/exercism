(ns nucleotide-count)

(defn count
  ([nucleotide dna]
   (cond (not (contains? #{\G \A \T \C} nucleotide)) (throw (Throwable. (str nucleotide "not a nucleotide"))))
   (reduce (fn [cnt chr] (cond (= chr nucleotide) (+ cnt 1) :else cnt)) 0 dna)))

(defn nucleotide-counts
  ([dna]
   (let [start {\A 0 \T 0 \C 0 \G 0}]
     (reduce (fn [cnt chr] (update cnt chr inc)) start dna))))
