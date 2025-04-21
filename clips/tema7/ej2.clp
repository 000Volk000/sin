(deffunction par
    (?a)
    (if (or (not (integerp ?a)) (< ?a 0)) then
        (printout t "Error en el formato: " ?a crlf)
    else
        (if (= ?a 0) then 0
            else (+ 2 (par (- ?a 1)))
        )
    )
)