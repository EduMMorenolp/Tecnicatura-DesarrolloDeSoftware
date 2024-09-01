// Prácticas adicionales 2

Algoritmo Problema3
	
	Definir precioUnitario, iva, descuento Como Real
	Definir descuentoOpcion, cantImpresoras Como Entero
	
	iva = 10.5/100
	precioUnitario = 50500 + (50500*0.105)
	
	Escribir "Bienvenido a Imprimiendo Ilusiones S.A"
	Escribir "Ingrese cantidad de impresoras a comprar"
	Leer cantImpresoras
	Escribir "Ingrese una forma de pago"
	Escribir "OPCION 1 - Efectivo"
	Escribir "OPCION 2 - Tarjeta de credito"
	Escribir "OPCION 3 - MercadoPago"
	Leer descuentoOpcion
	
	Escribir "RESUMEN DE COMPRA"
	Escribir "- Cantidad de Impresoras: ", cantImpresoras
	Escribir "- Precio Unitario de impresoras: ", precioUnitario
	Escribir "- Total sin descuento: ", cantImpresoras * precioUnitario
	Segun descuentoOpcion Hacer
		1: 
			Escribir "- Forma de pago: Efectivo"
			descuento = (cantImpresoras * precioUnitario)*0.1 
			Escribir "- Descuento: ", descuento
		2: 
			Escribir "- Forma de pago: Tarjeta de credito"
			descuento = (cantImpresoras * precioUnitario)*0.05
			Escribir "- Descuento: ", descuento
		3:
			Escribir "- Forma de pago: MercadoPago"
			descuento = (cantImpresoras * precioUnitario)*0.15
			Escribir "- Descuento: ", descuento
	FinSegun
	
	Escribir "- Total a pagar: ", (cantImpresoras * precioUnitario) - descuento
	
FinAlgoritmo
