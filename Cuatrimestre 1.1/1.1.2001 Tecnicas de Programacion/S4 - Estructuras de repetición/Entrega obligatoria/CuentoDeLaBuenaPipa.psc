Algoritmo CuentoDeLaBuenaPipa
	
	Definir respuesta Como Cadena
	Definir palabra_magica Como Cadena
	
	palabra_magica = "Hechizo"
	Escribir "¿Querés que te cuente el cuento de la buena Pipa?"
	Leer respuesta
	
	Mientras respuesta <> palabra_magica Hacer
		Escribir "Yo no dije ", respuesta
		Escribir "Yo dije si ¿Querés que te cuente el cuento de la buena Pipa?"
		Leer respuesta
	FinMientras
	
	Escribir "¡Fin del cuento!"
	
FinAlgoritmo
