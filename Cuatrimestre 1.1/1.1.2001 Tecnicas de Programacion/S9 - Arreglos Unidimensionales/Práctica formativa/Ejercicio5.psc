Algoritmo Ejercicio5
	
	Definir palabra como caracter
    Definir vector como caracter
    Definir largo, i como entero
	Definir esPalindromo Como Logico
	
	Dimension vector[20]
	esPalindromo = Falso
    
	Repetir
		Escribir "Ingresa una palabra (máximo 20 caracteres):"
		Leer palabra
	Hasta Que Longitud(palabra) <= 20
	
	largo = Longitud(palabra)
	
	Para i = 0 Hasta largo Hacer
		vector[i] = Subcadena(palabra, i, i)
	FinPara
	
	Para i = 0 Hasta largo - 1 Hacer
		Si vector[i] <> vector[largo - 1 - i] Entonces
			esPalindromo = Verdadero
		FinSi
	FinPara
	
	Si esPalindromo = Verdadero Entonces
		Escribir "La palabra NO es un palíndromo."
	Sino
		Escribir "La palabra es un palíndromo."
	FinSi
	
FinAlgoritmo
