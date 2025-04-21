(defrule buscar-literal
    (ejemplo 1 azul rojo) => (printout t "Hola" crlf)
)

(defrule buscar-edad (persona (edad 20)) => (printout t "Hola2" crlf))


# Reglas con comodines
(defrule buscar-comodin
    (ejemplo ? azul rojo $?) => (printout t "Comodin1" crlf)
)

(defrule buscar-un-amigo
    (persona (amigos ?)) => (printout t "Comodin2" crlf)
)


# Guardar en h el hecho que ha activado la Regla
(defrule buscar-literal
    ?h <- (ejemplo 1 azul rojo) => (printout t ?h crlf)
)


# Regla Multicampo
(defrule al-menos-un-amigo ?h <- (persona (amigos ? $?)) => (printout t ?h crlf))

# Regla en cualquier posicion
(defrule encontrar-literal (ejemplo $? AMARILLO $?) => (printout t "AMARILLO" crlf))