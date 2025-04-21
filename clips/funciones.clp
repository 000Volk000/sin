(deffunction formatea-args
    (?a ?b ?c)
    (printout t "Tengo 2 parametros obligatorios: " ?a " y " ?b ". Ademas de " (length$ $?c) " opcionales: " $?c crlf)
)

(defmethod +
    ((?a SYMBOL) (?b SYMBOL))
    (str-cat ?a " " ?b)
)