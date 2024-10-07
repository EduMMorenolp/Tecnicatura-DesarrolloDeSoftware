


Algoritmo Ejercicio8
	
	Definir dado1, dado2, dado3, dado4, dado5 Como Entero
    Definir generala Como Logico
    generala = Falso
    
    Mientras generala = Falso Hacer
        dado1 <- Aleatorio(1, 6)
        dado2 <- Aleatorio(1, 6)
        dado3 <- Aleatorio(1, 6)
        dado4 <- Aleatorio(1, 6)
        dado5 <- Aleatorio(1, 6)
        
        Escribir "Tirada: ", dado1, ", ", dado2, ", ", dado3, ", ", dado4, ", ", dado5
        
        Si dado1 = dado2 Y dado2 = dado3 Y dado3 = dado4 Y dado4 = dado5 Entonces
            generala = Verdadero
        FinSi
    FinMientras
    
    Escribir "¡Se ha obtenido GENERALA!"
	
FinAlgoritmo
