Funcion cargar_vendedores (Vendedores)
	definir i Como Entero
	Para i = 0 hasta 4 Hacer
		Vendedores[0] = "Juan"
		Vendedores[1] = "Sandra"
		Vendedores[2] = "Claudia"
		Vendedores[3] = "Pedro"
		Vendedores[4] = "Leonardo"
	FinPara
FinFuncion
Funcion cargar_ventas(ventas)
	Definir i, j Como Entero
	Para i = 0 Hasta 4 Hacer
		Para j = 0 hasta 5 Hacer
			ventas[i,j]=aleatorio(1000,5000)
		FinPara
	FinPara
FinFuncion


Algoritmo Ventas_Mensuales
	definir Vendedores Como Caracter
	definir Ventas Como Real
	Dimension Vendedores(5)
	Dimension Ventas(5,6)
	cargar_vendedores(Vendedores)
	cargar_ventas(ventas)
	//-------------------------------------
	// Resolución del alumno
	
	
	
FinAlgoritmo
