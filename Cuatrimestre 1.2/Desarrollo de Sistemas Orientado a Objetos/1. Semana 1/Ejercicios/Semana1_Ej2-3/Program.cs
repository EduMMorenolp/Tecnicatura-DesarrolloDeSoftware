/*
En el campeonato estudiantil llegan a la última etapa los participantes que superen los 80 puntos. El algoritmo pide el nombre de cada participante y la puntuación de los 3 jurados. Debe mostrar el nombre y el puntaje total de cada participante.
Nota: cuando se ingrese "FIN" en el nombre del participante finaliza nuestro programa.
*/

string nombre = "";
const int NUMERO_JURADOS = 3;

Console.WriteLine("Ingrese los datos de los participantes.");
Console.WriteLine("Cuando desee finalizar, ingrese 'FIN' como el nombre del participante.");

Console.WriteLine("Ingrese el nombre del participante");
nombre = Console.ReadLine() ?? "";

while (nombre != "FIN")
{
    double notaFinal = 0;
    for (int i = 1; i <= NUMERO_JURADOS; i++)
    {
        Console.Write($"Ingrese la Nota N°{i}: ");
        double nota = Convert.ToDouble(Console.ReadLine());
        notaFinal += nota;
    }
    Console.WriteLine($"El participante {nombre} tiene una Nota Final : {notaFinal}");
    if (notaFinal > 80)
    {
        Console.WriteLine("Participante Seleccionado para la Ultima etapa.");
    }
    else
    {
        Console.WriteLine("Participante NO fue Seleccionado para la Ultima etapa.");
    }
    Console.WriteLine("Ingrese el nombre del participante");
    nombre = Console.ReadLine() ?? "";
}
