Algoritmo MayorMenorIgual
    Definir numeroActual, numeroNuevo, puntaje Como Entero
    Definir prediccion Como Cadena
	Definir bandera Como Logico
	bandera = Falso
    puntaje = 0
    numeroActual = Aleatorio(1, 109)
    
    Escribir "Bienvenido al juego Mayor-Menor-Igual."
    Escribir "Debes predecir si el próximo número será mayor, menor o igual."
    Escribir "Número actual: ", numeroActual
	
	Repetir
		Repetir
			Escribir "¿Cómo será el próximo número (mayor, menor o igual)?: "
			Leer prediccion
		Mientras Que prediccion <> "mayor" Y prediccion <> "menor" Y prediccion <> "igual"
		numeroNuevo = Aleatorio(1, 109)
		Escribir "Nuevo número: ", numeroNuevo
		Si (prediccion = "mayor" Y numeroNuevo > numeroActual) O (prediccion = "menor" Y numeroNuevo < numeroActual) O (prediccion = "igual" Y numeroNuevo = numeroActual)Entonces
			puntaje <- puntaje + 1
			Escribir "¡Correcto! Puntaje actual: ", puntaje
		SiNo
			Escribir "¡Fallaste! El juego ha terminado."
			Escribir "Puntaje final: ", puntaje
			bandera = Verdadero
		FinSi
		numeroActual = numeroNuevo
	Mientras Que bandera = Falso
FinAlgoritmo

