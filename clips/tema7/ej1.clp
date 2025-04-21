(defgeneric extrae)

(defmethod extrae
    ((?a INTEGER) (?b INTEGER) (?c STRING))
    (sub-string ?a ?b ?c)
)

(defmethod extrae
    ((?a INTEGER) (?b INTEGER) (?c MULTIFIELD))
    (subseq$ ?c ?a ?b)
)

; (extrae 2 4 "Clips Es Deprimente")
; (extrae 2 4 (create$ uno dos tres cuatro cinco))