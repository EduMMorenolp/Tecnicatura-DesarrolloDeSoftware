

Algoritmo Ejercicio1
	
	Definir codCliente, abono, maxConsumoCliente, respuesta Como Caracter
	Definir consumo, sumaConsumo, maxConsumoClientes Como Entero
	Definir abonoA, abonoB, abonoC Como Real
	
	maxConsumoClientes = 0
	abonoA = 0
	abonoB = 0
	abonoC = 0
	sumaConsumo = 0
	
	Repetir
		Escribir "Ingrese el codigo del Cliente"
		Leer codCliente
		Escribir "Ingrese el abono al cual pertence (A, B, C):"
		Leer abono
		Escribir "Ingrese el consumon de datos en megabyte"
		Leer consumo
		
		Si consumo > 50 Entonces
			sumaConsumo = sumaConsumo + 1
		FinSi
		Si consumo > maxConsumoClientes Entonces
			maxConsumoClientes = consumo
			maxConsumoCliente = codCliente
		FinSi
		
		Segun abono Hacer
			"A":
				abonoA = abonoA + consumo * 0.5
			"B":
				Si consumo <= 5 Entonces
					abonoB = abonoB + consumo
				SiNo
					abonoB = abonoB + consumo * 0.75
				FinSi
			"C":
				Si consumo <= 10 Entonces
					abonoC = abonoC + consumo
				SiNo
					abonoC = abonoC + 10
				FinSi
		FinSegun
		
		Escribir "Hay mas Clientes ? S/N"
		Leer respuesta
		
	Mientras Que respuesta <> "N"	
	
	Escribir "Recaudado por Abonos"
	Escribir "Abono A: ", abonoA
	Escribir "Abono B: ", abonoB
	Escribir "Abono C: ", abonoC
	Escribir "Cliente que mas consumio datos"
	Escribir maxConsumoCliente
	Escribir "Cantidad de Clientes con consumo de 50 megabytes"
	Escribir sumaConsumo
	
	
FinAlgoritmo
