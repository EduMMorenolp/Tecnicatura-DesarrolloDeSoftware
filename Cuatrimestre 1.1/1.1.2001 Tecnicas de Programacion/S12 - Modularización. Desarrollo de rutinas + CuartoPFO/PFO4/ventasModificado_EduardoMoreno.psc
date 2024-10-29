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

Funcion montoVendedor(nombre, ventas, vendedores)
	Definir i, j, total Como Entero
	Definir bool Como Logico
	bool = Falso
	total = 0
	
	Escribir "Informe del Vendedor ", nombre
	Para i = 0 Hasta 4 Hacer
		Si Minusculas(nombre) = Minusculas(Vendedores[i]) Entonces
			bool = Verdadero
			Para j = 0 Hasta  5 Hacer
				Escribir "Mes ", j+1, " $", Ventas[i,j]
				total = total + Ventas[i,j]
			FinPara
		FinSi
	FinPara
	Si bool = Falso Entonces
		Escribir "No se encontro el Vendedor"
	SiNo
		Escribir "Total : $", total
	FinSi
FinFuncion

Algoritmo Ventas_Mensuales
	definir Vendedores Como Caracter
	definir Ventas Como Real
	Dimension Vendedores(5)
	Dimension Ventas(5,6)
	cargar_vendedores(Vendedores)
	cargar_ventas(Ventas)
	//-------------------------------------
	// Resolución del alumno
	Definir nombre Como Caracter
	
	Escribir "Ingrese el nombre del vendedor"
	Leer nombre
	
	montoVendedor(nombre, Ventas, Vendedores)
	
FinAlgoritmo
