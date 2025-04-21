. Muestra los hechos con índice >=1
(facts 1)

. Muestra los hechos 1 a 2
(facts 1 2)

. Crea un nuevo hecho que sea como el 4 pero con (temperatura baja)
(duplicate 4(temperatura baja))

. Elimina el hecho 1
(retract 1)

. Añade un hecho (color verde)
(assert (color verde))

. Elimina todos los hechos
(retract *)