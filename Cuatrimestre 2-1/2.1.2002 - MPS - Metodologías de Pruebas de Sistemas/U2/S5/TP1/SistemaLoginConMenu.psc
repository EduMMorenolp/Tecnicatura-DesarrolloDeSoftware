Algoritmo SistemaLoginConMenu
	// Datos de login correctos
	Definir usuarioCorrecto Como Cadena;
	Definir passwordCorrecto Como Cadena;
	usuarioCorrecto <- "admin";
	passwordCorrecto <- "123456";
	// Intentos de login
	Definir intentos Como Entero;
	intentos <- 3;
	Definir peliculasTerror Como Caracter;
	Definir peliculasDrama Como Caracter;
	Definir peliculasComedia Como Caracter;
	// Arreglos con datos temáticos (películas por género)
	Dimension peliculasTerror[5];
	Dimension peliculasDrama[5];
	Dimension peliculasComedia[5];
	// Cargar datos en los arreglos
	peliculasTerror[0] <- "El Exorcista";
	peliculasTerror[1] <- "El Resplandor";
	peliculasTerror[2] <- "Scream";
	peliculasTerror[3] <- "Insidious";
	peliculasTerror[4] <- "La Niebla";
	peliculasDrama[0] <- "El Padrino";
	peliculasDrama[1] <- "Forrest Gump";
	peliculasDrama[2] <- "Titanic";
	peliculasDrama[3] <- "La Lista de Schindler";
	peliculasDrama[4] <- "Bohemian Rhapsody";
	peliculasComedia[0] <- "Loco por Mary";
	peliculasComedia[1] <- "Anchorman";
	peliculasComedia[2] <- "Superbad";
	peliculasComedia[3] <- "Ted";
	peliculasComedia[4] <- "¿Qué pasó ayer?";
	// Variables auxiliares
	Definir usuarioInput Como Cadena;
	Definir passwordInput Como Cadena;
	Definir opcionMenu Como Entero;
	Definir opcionGenero Como Entero;
	Definir continuar Como Logico;
	Definir i Como Entero;
	continuar <- Verdadero;
	// --- Fase de Login ---
	Mientras intentos > 0 Y continuar Hacer
		Escribir "=== Inicio de Sesión ===";
		Escribir "Usuario: ";
		Leer usuarioInput;
		Escribir "Contraseña: ";
		Leer passwordInput;
		Si usuarioInput == usuarioCorrecto Y passwordInput == passwordCorrecto Entonces
			Escribir "";
			Escribir "¡Bienvenido, ", usuarioCorrecto, "!";
			Escribir "";
			// Menú principal
			Mientras continuar Hacer
				Escribir "=== Menú Principal ===";
				Escribir "1. Visualizar listas de películas";
				Escribir "2. Salir";
				Escribir "Seleccione una opción: ";
				Leer opcionMenu;
				Si opcionMenu == 1 Entonces
					Escribir "";
					Escribir "Seleccione un género:";
					Escribir "1. Terror";
					Escribir "2. Drama";
					Escribir "3. Comedia";
					Escribir "Opción: ";
					Leer opcionGenero;
					Escribir "";
					// Usamos 'Segun' para seleccionar el género
					Segun opcionGenero Hacer
						1:
							Escribir "=== Películas de Terror ===";
							Para i <- 0 Hasta 4 Hacer
								Escribir peliculasTerror[i];
							FinPara;
						2:
							Escribir "=== Películas de Drama ===";
							Para i <- 0 Hasta 4 Hacer
								Escribir peliculasDrama[i];
							FinPara;
						3:
							Escribir "=== Películas de Comedia ===";
							Para i <- 0 Hasta 4 Hacer
								Escribir peliculasComedia[i];
							FinPara;
						De Otro Modo:
							Escribir "Opción inválida. Por favor, elija 1, 2 o 3.";
					FinSegun;
					Escribir "";
				Sino Si opcionMenu == 2 Entonces
						Escribir "Saliendo del programa. ¡Hasta luego!";
						continuar <- Falso;
					Sino
						Escribir "Opción no válida. Intente nuevamente.";
						Escribir "";
					FinSi
					continuar <- Falso; 
				FinSi
			FinMientras;
		Sino
			intentos <- intentos - 1;
			Si intentos > 0 Entonces
				Escribir "Usuario o contraseña incorrectos. Te quedan ", intentos, " intentos.";
				Escribir "";
			Sino
				Escribir "Has agotado tus intentos. Acceso denegado.";
			FinSi;
		FinSi;
	FinMientras;
FinAlgoritmo