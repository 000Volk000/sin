(defrule r-hombre-animal
	(hombre ?x)
	=>
	(assert (animal ?x))
)
(defrule r-animal-respira
	(animal ?x)
	=>
	(assert (respira ?x))
)

(assert (hombre Juan))

(defrule r-saluda-nombre
	(saluda ?x)
	=>
	(printout t "Hola " ?x crlf)
)
