
// Prácticas adicionales 2


Algoritmo Problema4
	
	Definir cantidad Como Real
	Definir medida Como Caracter
	
	Escribir "Ingrese la Cantidad a convertir"
	Leer cantidad
	Escribir "Ingrese La unidad de medida deseada"
	Escribir " - Yarda"
	Escribir " - Pies"
	Escribir " - Centimetros"
	Escribir " - Pulgadas"
	Leer medida
	medida = Minusculas(medida)
	Segun medida Hacer
		"yarda":
			Escribir cantidad, " Yardas equivalen a " cantidad * 914.4 " milimetros"
		"pies":
			Escribir cantidad, " Pies equivalen a " cantidad * 304.8 " milimetros"
		"centimetros":
			Escribir cantidad, " Centimetros equivalen a " cantidad * 10 " milimetros"
		"pulgada":
			Escribir cantidad, " Pulgadas equivalen a " cantidad * 25.4 " milimetros"
		De Otro Modo:
			medida = Mayusculas(medida)
			Escribir "Esta medidad: ", medida
			Escribir "No existe en la Base de datos"
	FinSegun
	
FinAlgoritmo
