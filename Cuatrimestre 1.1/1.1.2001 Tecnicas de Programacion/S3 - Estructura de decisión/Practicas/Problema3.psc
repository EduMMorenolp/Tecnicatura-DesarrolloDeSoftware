
//Problema 3
// Situaci�n. Somos convocados para realizar una actividad de 
//matem�ticas en l�nea para que estudiantes aprendan a realizar operaciones b�sicas.
// Se le solicita al usuario ingresar dos n�meros reales por teclado.
// Objetivo. Mostrar  por pantalla el resultado de:
// Sumar ambos n�meros.
// Restar ambos n�meros. 
// Multiplicar ambos n�meros
// Dividir ambos n�meros (tener en cuenta que no se puede dividir por cero;
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
