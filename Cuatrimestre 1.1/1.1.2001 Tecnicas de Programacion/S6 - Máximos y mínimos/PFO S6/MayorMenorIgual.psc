Algoritmo MayorMenorIgual
    Definir numeroActual, numeroNuevo, puntaje Como Entero
    Definir prediccion Como Cadena
	Definir bandera Como Logico
	bandera = Falso
    puntaje = 0
    numeroActual = Aleatorio(1, 109)
    
    Escribir "Bienvenido al juego Mayor-Menor-Igual."
    Escribir "Debes predecir si el pr�ximo n�mero ser� mayor, menor o igual."
    Escribir "N�mero actual: ", numeroActual
	
	Repetir
		Repetir
			Escribir "�C�mo ser� el pr�ximo n�mero (mayor, menor o igual)?: "
			Leer prediccion
		Mientras Que prediccion <> "mayor" Y prediccion <> "menor" Y prediccion <> "igual"
		numeroNuevo = Aleatorio(1, 109)
		Escribir "Nuevo n�mero: ", numeroNuevo
		Si (prediccion = "mayor" Y numeroNuevo > numeroActual) O (prediccion = "menor" Y numeroNuevo < numeroActual) O (prediccion = "igual" Y numeroNuevo = numeroActual)Entonces
			puntaje <- puntaje + 1
			Escribir "�Correcto! Puntaje actual: ", puntaje
		SiNo
			Escribir "�Fallaste! El juego ha terminado."
			Escribir "Puntaje final: ", puntaje
			bandera = Verdadero
		FinSi
		numeroActual = numeroNuevo
	Mientras Que bandera = Falso
FinAlgoritmo

