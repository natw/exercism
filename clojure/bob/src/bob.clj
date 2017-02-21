(ns bob)

(defn response-for
  [msg]
  (cond
    (re-matches #"^\s*$" msg) "Fine. Be that way!"
    (re-matches #"^(?:(?![a-z]+).)+[A-Z](?:(?![a-z]+).)+$" msg) "Whoa, chill out!"
    (re-matches #".*\?$" msg) "Sure."
    :else "Whatever."))
