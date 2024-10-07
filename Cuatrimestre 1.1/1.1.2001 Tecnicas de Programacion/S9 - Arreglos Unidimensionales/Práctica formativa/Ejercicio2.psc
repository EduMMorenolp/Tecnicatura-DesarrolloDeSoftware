Algoritmo Ejercicio2
	
	Definir i, max, valores, celda, VAL Como Entero
	
	VAL = 15
	
	Dimension valores[VAL]
	
	max = 0
	
	Para i = 0 Hasta (VAL - 1) Hacer
		Escribir "Ingrese el valor N°", i + 1
		Leer valores[i]
		Si valores[i] > max Entonces
			max = valores[i]
			celda = i + 1
		FinSi
	FinPara
	Escribir "El mayor valor es: ", max, ", en la celda N°", celda 
	
FinAlgoritmo
