Funcion mostrarMatriz(matriz)
	Definir i, j Como Entero
	Escribir "------------------"
	Para i = 0 Hasta 4 Hacer
		Para j = 0 Hasta 9 Hacer
			Escribir matriz[i,j], " " Sin Saltar
		FinPara
		Escribir ""
	FinPara
	Escribir "------------------"
FinFuncion

Funcion ordenarMatriz(matriz)
	Definir i, j, k, temp Como Entero
	Para i = 0 Hasta 4 Hacer
		Para j = 0 Hasta 8 Hacer
			Para k = 0 Hasta 8 - j Hacer
				Si matriz[i,k] > matriz[i,k + 1] Entonces
					temp = matriz[i,k]
					matriz[i,k] = matriz[i,k + 1]
					matriz[i,k + 1] = temp
				FinSi
			FinPara
		FinPara
	FinPara
FinFuncion

Algoritmo Ejercicio1
	Definir matriz, i , j, k, temp Como Entero
	
	Dimension matriz[5,10]
	
	Para i = 0 Hasta 4 Hacer
		Para j = 0 Hasta  9 Hacer
			matriz[i,j] = Aleatorio(1,9)
		FinPara
	FinPara
	
	Escribir "Matriz Sin Ordenar"
	mostrarMatriz(matriz)
	
	ordenarMatriz(matriz)
	
	Escribir "Matriz Ordenada"
	mostrarMatriz(matriz)
	
FinAlgoritmo


