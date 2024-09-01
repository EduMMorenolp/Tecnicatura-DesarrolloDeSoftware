
// Problema 4
// Situaci�n. La asociaci�n de vinicultores tiene como pol�tica fijar un precio
//inicial al kilo de uva, la cual se clasifica en tipos "A" y "B",
//y adem�s en tama�os 1 y 2. Este precio inicial (se le solicita al usuario cuando
//comienza el programa) no se modifica en ning�n momento durante el proceso de venta.
//Cuando se realiza la venta del producto, nos ingresan el peso total de la venta,
//el tipo y tama�o de la uva, y nos solicitan determinar cu�nto dinero recibir�
//el productor por la uva que entrega en un embarque, considerando lo siguiente:
// Si es de tipo "A", se recarga $2.80 al precio inicial del kilo,
//cuando es de tama�o 1; y $2.30 si es de tama�o 2.
// Si es de tipo "B", se rebajan $1.30 al precio inicial del kiloo cuando
//es de tama�o 1, y $1.50 cuando es de tama�o 2.
//Objetivo. Se pide mostrar por pantalla, en $, la recaudaci�n que recibir�
//el productor por la uva que entregue.

Algoritmo Problema4
	
	Definir precioFijo Como Real
	Definir tipoUva Como Cadena
	Definir tamanioUva Como Entero
	
	
	Escribir "Ingrese el precio inicial de la Uva"
	Leer precioFijo
	
	Escribir " -- INICIANDO PROGRAMA -- "
	Escribir "Ingrese el tipo de Uva (A o B)"
	Leer tipoUva
	Escribir "Ingrese el tama�o de la Uva (1 o 2)"
	Leer tamanioUva
	Si tipoUva = "A" Entonces
		Si tamanioUva = 1 Entonces
			Escribir " El Precio es de: ", precioFijo + 2.80
		SiNo
			Escribir " El Precio es de ", precioFijo + 2.30
		FinSi
	Sino 
		Si tamanioUva = 1 Entonces
			Escribir " El Precio es de: ", precioFijo - 1.30
		SiNo
			Escribir " El Precio es de: ", precioFijo - 1.50
		FinSi
	FinSi
FinAlgoritmo

