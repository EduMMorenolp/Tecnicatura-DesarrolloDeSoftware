Funcion averiguarRadio(radio Por Referencia)
	Definir resultado Como Real
	resultado = radio * PI
	Escribir "El radio es: ", resultado
FinFuncion

Funcion averiguarPerimetro(base, altura Por Referencia)
	Definir resultado Como Real
	resultado = 2 * (base + altura)
	Escribir "El perimetro es: ", resultado
FinFuncion


Algoritmo radio_o_perimetro
	Definir opc Como Entero
	Definir radio, base, altura Como Real
	
	Repetir
		Escribir "Seleccione la Opcion Deseada (1 o 2)"
		Escribir "OPCION 1 -  Averiguar Radio"
		Escribir "OPCION 2 - Averiguar Perimetro"
		Leer opc
	Mientras Que (opc <> 1 Y opc <> 2)

	Segun opc
		1 : 
			Escribir "Ingrese el radio"
			Leer radio
			averiguarRadio(radio)
		2 : 
			Escribir "Ingrese la base"
			Leer base
			Escribir "Ingrese la altura"
			Leer altura
			averiguarPerimetro(base, altura)
	FinSegun
	
FinAlgoritmo
