
// Prácticas adicionales 2

Algoritmo Problema2
	
	Definir tipoCafe Como Entero
	Definir tipoSandwich Como Entero
	Definir pagar Como Real
	
	Escribir " Bienvenido a MedioCafe "
	Escribir "Eliga una opcion del 1 al 3 de cafe"
	Escribir "1 - Chico $85.60"
	Escribir "2 - Americano $120"
	Escribir "3 - Jarrito $135.90"
	Leer tipoCafe
	pagar = 0
	Segun tipoCafe Hacer
		1:
			pagar = pagar + 85.6
		2:
			pagar = pagar + 120
		3:
			pagar = pagar + 135.9
		De Otro Modo:
			Escribir "Error en la eleccion"
	FinSegun
	Escribir "Eliga una opcion del 1 al 5 de sandwich"
	Escribir "1 - Simple Comun $170"
	Escribir "2 - Simple Especial $187.5"
	Escribir "3 - Triple comun $250.45"
	Escribir "4 - Triple especial $300"
	Escribir "5 - Triple Vegetariano $285.90"
	Leer tipoSandwich
	Segun tipoSandwich Hacer
		1:
			pagar = pagar + 170
		2: 
			pagar = pagar + 187.5
		3:
			pagar = pagar + 250.45
		4: 
			pagar = pagar + 300
		5: 
			pagar = pagar + 285.90
		De Otro Modo:
			Escribir "Error en la eleccion"
	FinSegun
	Escribir "Usted deve pagar: ", pagar
	
FinAlgoritmo
