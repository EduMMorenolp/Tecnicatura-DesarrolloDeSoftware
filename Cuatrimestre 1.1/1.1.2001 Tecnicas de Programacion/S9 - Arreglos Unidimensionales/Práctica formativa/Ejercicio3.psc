Algoritmo Ejercicio3
	
	Definir i, STOCK Como Entero
	Definir paquetePeso, tarifas Como Real
	
	STOCK = 20
	
	Dimension paquetePeso[STOCK]
	Dimension tarifas[STOCK]
	
	Para i = 0 Hasta (STOCK - 1) Hacer
		Escribir "Ingrese el peso del paquete en kg: "
		Leer paquetePeso[i]
		Si paquetePeso[i] < 2 Entonces
			tarifas[i] = paquetePeso[i] * 500.50
		SiNo
			tarifas[i] = paquetePeso[i] * 400
		FinSi
	FinPara
	Para i = 0 Hasta (STOCK - 1) Hacer
		Escribir "Para el paquete ", i + 1, " su valor es: ", tarifas[i]
	FinPara
	
FinAlgoritmo
