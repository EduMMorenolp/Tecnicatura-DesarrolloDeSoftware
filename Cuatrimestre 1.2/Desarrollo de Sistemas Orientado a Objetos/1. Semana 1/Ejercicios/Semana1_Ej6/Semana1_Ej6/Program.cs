/*
 * 6. Tres personas aportan diferente capital a una sociedad y desean saber el valor total aportado y qué porcentaje aportó cada una (indicando nombre y porcentaje). Para ello, solicitar la carga por teclado del nombre de cada socio, su capital aportado y a partir de esto calcular e informar lo requerido previamente .
*/

const int CANT_SOCIOS = 3;

double[] capital =  new double[CANT_SOCIOS];
string[] nombres = new string[CANT_SOCIOS];
double totalCapital = 0;

for (int i = 0; i < CANT_SOCIOS; i++)
{
    Console.Write("Ingrese el nombre : ");
    nombres[i] = Console.ReadLine() ?? "";
    Console.Write("Ingrese el lo aportado : ");
    capital[i] = Convert.ToInt32(Console.ReadLine());
    totalCapital += capital[i];
}
Console.WriteLine("---------");
Console.WriteLine($"Total aportado : {totalCapital}");
for (int i = 0; i < CANT_SOCIOS; i++)
{
    double aporte = capital[i] / totalCapital * 100;
    Console.WriteLine($"Nombre: {nombres[i]}, Aporte: {aporte:F2}%");
}