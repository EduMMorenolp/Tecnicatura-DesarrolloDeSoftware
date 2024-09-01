
// Problema 1:
// Situación. Nos piden un algoritmo para estudiantes de 1er grado (acerca de escala numérica) 
//para que aprendan a comparar números. 
// Objetivo. Ingresar dos números enteros distintos por teclado e informar 
//por pantalla cuál es el mayor de ellos.

Algoritmo Problema1
	
Definir num1 Como Entero
Definir num2 Como Entero

Escribir "Ingrese el primer numero"
Leer num1
Escribir "Ingrese el segundo numero"
Leer num2

Si num1 > num2 Entonces
	Escribir " El numero ", num1, " es mayor que ", num2
SiNo
	Escribir " El numero ", num2, " es mayor que ", num1
FinSi
	
FinAlgoritmo
