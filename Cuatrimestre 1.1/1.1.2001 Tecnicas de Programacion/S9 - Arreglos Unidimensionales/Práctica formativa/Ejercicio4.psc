Algoritmo Ejercicio4
	
	
	Definir i, minutos, MIEMBROS Como Entero
	Definir promedio, tiempos Como Real
	
	MIEMBROS = 12
	promedio = 0
	
	Dimension minutos[MIEMBROS]
	Dimension tiempos[MIEMBROS]
	
	Para i = 0 Hasta (MIEMBROS - 1) Hacer
		Escribir "Ingrese los minutos del corredor N°", i + 1
		Leer minutos[i]
		tiempos[i] =  minutos[i] * 60
		promedio = promedio + tiempos[i]
	FinPara
	Para i = 0 Hasta (MIEMBROS - 1) Hacer
		Escribir "El corredor N°", i + 1, " tardo ", tiempos[i], " segundos"
	FinPara
	Escribir "El promedio es: ", promedio / MIEMBROS	
FinAlgoritmo
