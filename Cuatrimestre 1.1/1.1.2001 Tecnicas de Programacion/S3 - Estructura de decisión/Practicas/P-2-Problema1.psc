// Prácticas adicionales 2

Algoritmo Problema1
	
	Definir sueldo Como Real
	Definir categoria Como Caracter
	
	Escribir "Ingrese el sueldo del trabajador"
	Leer sueldo
	Escribir "Ingrese la categoria (A - B - C - D)"
	Leer categoria
	
	Segun categoria Hacer
		"A": 
			Escribir "El sueldo es:", sueldo + sueldo*0.18
		"B":
			Escribir "El sueldo es:", sueldo + sueldo*0.12
		"C":
			Escribir "El sueldo es:", sueldo + sueldo*0.09
		"D":
			Escribir "El sueldo es:", sueldo + sueldo*0.06
		De Otro Modo:
			Escribir "No se ingreso categoria valida"
	FinSegun
	
FinAlgoritmo
