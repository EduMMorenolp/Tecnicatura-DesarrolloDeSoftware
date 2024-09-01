
// Problema 2:
// Situación. Ahora nos solicitan ampliar el ejercicio anterior para 3 números.
//Se le pide al usuario que ingrese por teclado 3 números enteros distintos. 
// Objetivo. Informar el mayor por pantalla.

Algoritmo Problema2
	
	Definir num1 Como Entero
	Definir num2 Como Entero
	Definir num3 Como Entero
	
	Escribir "Ingrese el primer numero"
	Leer num1
	Escribir "Ingrese el segundo numero"
	Leer num2
	Escribir "Ingrese el tercer numero"
	Leer num3
	
	Si num1 > num2 Y num1 > num3 Entonces
		Escribir " El numero ", num1, " es mayor que ", num2, " y ", num3
	FinSi
	Si num2 > num1 Y num2 > num3 Entonces
		Escribir " El numero ", num2, " es mayor que ", num1, " y ", num3
	FinSi
	Si num3 > num2 Y num3 > num1 Entonces
		Escribir " El numero ", num3, " es mayor que ", num2, " y ", num1
	FinSi
	
	
FinAlgoritmo
