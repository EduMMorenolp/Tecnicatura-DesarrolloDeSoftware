Algoritmo PFO3_EduardoMoreno
	Definir MAX_ALUMNOS, i, edad, cantAlumnos, mayorEdad Como Entero
    Definir matrizAlumnos, nombre Como Caracter
    MAX_ALUMNOS = 5
    cantAlumnos = 0
    mayorEdad = 0
	nombre = ""
    
    Dimension matrizAlumnos[MAX_ALUMNOS, 2]
    
    Para i = 0 Hasta MAX_ALUMNOS - 1 Hacer
		Si nombre <> "*" Entonces
			Escribir "Ingrese el nombre del alumno (o * para finalizar):"
			Leer nombre
		FinSi
		Si nombre <> "*" Entonces
			matrizAlumnos[i, 0] = nombre
			
			Escribir "Ingrese la edad de ", nombre
			Leer edad
			Mientras edad < 0 Hacer
				Escribir "Por favor, ingrese una edad válida (número positivo):"
				Leer edad
			FinMientras
			
			matrizAlumnos[i, 1] = ConvertirATexto(edad) 
			cantAlumnos = cantAlumnos + 1 
			
			Si edad > mayorEdad Entonces
				mayorEdad = edad
			FinSi
		Sino 
			matrizAlumnos[i, 0] = ""
			matrizAlumnos[i, 1] = ""
		FinSi
    FinPara
    
    Escribir "Cantidad de alumnos en el curso: ", cantAlumnos
    Escribir "La mayor edad es: ", mayorEdad
    Escribir "Alumnos con la mayor edad (", mayorEdad, " años):"
	Si cantAlumnos <> 0 Entonces
		Para i = 0 Hasta cantAlumnos - 1 Hacer
			Si ConvertirANumero((matrizAlumnos[i, 1])) = mayorEdad Entonces
				Escribir matrizAlumnos[i, 0]
			FinSi
		FinPara
	FinSi
    
FinAlgoritmo
