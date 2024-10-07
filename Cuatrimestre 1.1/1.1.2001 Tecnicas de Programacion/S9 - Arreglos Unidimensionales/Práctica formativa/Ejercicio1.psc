Algoritmo Ejercicio1
	
	Definir i, max, valores Como Entero
	
	Dimension valores[15]
	
	max = 0
	
	Para i = 0 Hasta 14 Hacer
		Escribir "Ingrese un valor: "
		Leer valores[i]
	FinPara
	Para i = 0 Hasta 14 Hacer
		Si valores[i] > max Entonces
			max = valores[i]
		FinSi
	FinPara
	Escribir "El mayor valor es : ", max
	
FinAlgoritmo
