Algoritmo Biblioteca
	
	Definir librosInfantil, librosNovela, librosHistoria, totalLibros, estante Como Entero
	Definir maxPaginas, paginasLibro Como Entero
	Definir libroMaxPaginas, nombreLibro, generoLibro Como Cadena
	
	librosInfantil = 0
	librosNovela = 0 
	librosHistoria = 0
	totalLibros = 0
	maxPaginas = 0
	libroMaxPaginas = ""
	
	Para estante = 1 Hasta 5 Con Paso 1 Hacer
		Escribir "Procesando el estante ", estante
		Repetir
			Escribir "Ingrese el nombre del libro (o FIN para terminar el estante):"
			Leer nombreLibro
			Si nombreLibro <> "FIN" Entonces
				Repetir
					Escribir "Ingrese el g�nero del libro (I = Infantil, N = Novela, H = Historia):"
					Leer generoLibro
					generoLibro = Mayusculas(generoLibro)
				Mientras Que  generoLibro <> "I" Y generoLibro <> "N" Y generoLibro <> "H"
				Segun generoLibro Hacer
					Caso "I":
						librosInfantil <- librosInfantil + 1
					Caso "N":
						librosNovela <- librosNovela + 1
					Caso "H":
						librosHistoria <- librosHistoria + 1
				FinSegun
				Escribir "Ingrese la cantidad de p�ginas del libro:"
                Leer paginasLibro
				Si paginasLibro > maxPaginas Entonces
					maxPaginas = paginasLibro
					libroMaxPaginas = nombreLibro
				FinSi
				totalLibros = totalLibros + 1
			FinSi
		Mientras Que nombreLibro <> "FIN"
		Si libroMaxPaginas <> "" Entonces
			Escribir "El libro con m�s p�ginas en el estante ", estante, " es: ", libroMaxPaginas, " con ", maxPaginas, " p�ginas."
		FinSi
		libroMaxPaginas = ""
	FinPara
	
	Escribir "Cantidad de libros por g�nero:"
	Escribir "Infantil: ", librosInfantil
	Escribir "Novela: ", librosNovela
	Escribir "Historia: ", librosHistoria
	Escribir "Promedio de libros por estante: ", totalLibros / 5
	
FinAlgoritmo
