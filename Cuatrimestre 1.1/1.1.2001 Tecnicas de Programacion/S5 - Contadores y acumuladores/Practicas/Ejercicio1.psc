Algoritmo Ejercicio1
	
	Definir entradas, entradasVendidas Como Entero
	
	entradas = 60
	
	Hacer
		Escribir "Si ingresa 0(cero) se finalizara"
		Escribir "Ingrese cuantas entradas se vendio"
		Leer entradasVendidas
		entradas = entradas - entradasVendidas
		Si entradas = 0 Entonces
			entradasVendidas = 0
		FinSi
	Mientras Que entradasVendidas <> 0
	
	Escribir "Localidades restantes: ", entradas
	
FinAlgoritmo
