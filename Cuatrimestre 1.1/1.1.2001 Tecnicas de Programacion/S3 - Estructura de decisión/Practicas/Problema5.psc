
// Situación. En un negocio de venta de repuestos de heladera tiene por 
//políticas comerciales realizar descuentos dependiendo del monto de 
//venta de la siguiente manera:
// Si el monto es menor que $500 no hay descuento.
// Si el monto está comprendido entre $500 y $1000 inclusive, el descuento es de 5%.
// Si el monto está comprendido entre $1001 y $7000 inclusive, el descuento es del 11%.
// Si el monto está comprendido entre $7001 y $15000 inclusive, el descuento es del 18%.
// Si el monto es mayor de $15000 el descuento es del 25%.
// Por ejemplo, si se ingresa una venta de $5000, el descuento será $550,
//y por lo tanto el valor a pagar será $4450.
// (A partir del punto 3 considerar mayor que el valor anterior)

Algoritmo Problema5
	
	Definir monto Como Real
	Definir descuento Como Real
	
	Escribir "Ingrese el monto"
	Leer monto
	
	Si monto < 500 Entonces
		Escribir "No hay descuento"
	FinSi
	Si monto >= 500 Y monto <= 1000 Entonces
		descuento = monto*0.05
		Escribir "El descuento es de: " monto - descuento
	FinSi
	Si monto > 1000 Y monto <= 7000 Entonces
		descuento = monto*0.11
		Escribir "El descuento es de: " monto - descuento
	FinSi
	Si monto > 7000 Y monto <= 15000 Entonces
		descuento = monto*0.18
		Escribir "El descuento es de: " monto - descuento
	FinSi
	Si monto > 15000 Entonces
		descuento = monto*0.25
		Escribir "El descuento es de: " monto - descuento
	FinSi
	
	
FinAlgoritmo
