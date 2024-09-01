

Algoritmo Ejercicio7
	
	Definir numeroDado Como Entero
	Definir respuesta Como Caracter
	numeroDado = 0
	
	Hacer 
		Escribir "Desea lanzar el dado ? Si/No"
		Leer respuesta
		respuesta = Minusculas(respuesta)
		Si respuesta = "si" Entonces
			Escribir "Tirando dado ... "
			numeroDado = aleatorio(1,6)
			Escribir "Salio el ", numeroDado
			Si numeroDado = 3 Entonces
				Escribir "Usted a Ganado!!"
			FinSi
		SiNo
			Si respuesta = "no" Entonces
				numeroDado = 3
			FinSi
		Fin Si
	Mientras Que numeroDado <> 3
	
FinAlgoritmo
