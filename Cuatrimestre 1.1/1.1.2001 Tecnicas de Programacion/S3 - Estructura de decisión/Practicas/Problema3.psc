
//Problema 3
// Situación. Somos convocados para realizar una actividad de 
//matemáticas en línea para que estudiantes aprendan a realizar operaciones básicas.
// Se le solicita al usuario ingresar dos números reales por teclado.
// Objetivo. Mostrar  por pantalla el resultado de:
// Sumar ambos números.
// Restar ambos números. 
// Multiplicar ambos números
// Dividir ambos números (tener en cuenta que no se puede dividir por cero;
//en tal caso, mostrar un mensaje de error).  

Algoritmo Problema3
	
	Definir num1 Como Real
	Definir num2 Como Real
	
	Escribir "Ingrese el primer numero"
	Leer num1
	Escribir "Ingrese el segundo numero"
	Leer num2
	
	Escribir " La suma es: ", num1 + num2
	Escribir " La resta es: ", num1 - num2
	Escribir " La multiplicacion es: ", num1 * num2
	Si num2 = 0 Entonces
		Escribir " No se puede dividir por Cero"
	SiNo
		Escribir " La division es: ", num1 / num2
	FinSi
FinAlgoritmo
