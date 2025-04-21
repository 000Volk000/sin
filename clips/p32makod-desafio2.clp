;Plantilla definiendo empleados de una empresa
(deftemplate empleado
;id será un identificador único de cada empleado
(slot id (type INTEGER) (range 1 100))
(slot nombre (type STRING) (default ?NONE))
(slot apellidos (type STRING))
; departamento es un entero que identifica el departamento en el que trabaja el empleado
(slot departamento (type INTEGER)(range 1 5) (default ?NONE))
; salario es el salario del empleado
(slot salario (type NUMBER) (default 1500))
)

;Se dispone de la regla que nos solicita por teclado un identificador de un trabajador
(defrule solicitar-id
?f1 <- (solicitar id)
=>
(printout t "Introduzca nombre empleado: ")
(retract ?f1)
(assert (id (read)))
)

(deffacts empleados
    (empleado (id 1) (nombre "Inma") (departamento 1) (salario 2))
    (empleado (id 5) (nombre "Jaime") (departamento 1) (salario 2))
    (empleado (id 2) (nombre "Darío") (departamento 1) (salario 1))
    (empleado (id 4) (nombre "Juanan") (departamento 1) (salario 3))
    (empleado (id 3) (nombre "David") (departamento  5))
    (empleado (id 33) (nombre "Fernando") (apellidos "Alonso") (departamento  3) (salario 1000000))
)

(deffacts id (solicitar id))

(defrule enseñar
    ?i <- (id ?x)
    (empleado (id ?x) (salario ?z) (departamento ?t))
    (empleado (id ?p&:(!= ?p ?x)) (nombre ?y) (departamento ?t) (salario ?s&:(>= ?s ?z)))
    =>
    (printout t ?y crlf)
)