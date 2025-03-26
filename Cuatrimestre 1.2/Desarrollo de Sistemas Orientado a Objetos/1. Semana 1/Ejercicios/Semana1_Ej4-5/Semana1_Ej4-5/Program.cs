/*
 4. Se trata de implementar un programa que sume los dígitos de un número entero no negativo de 4 dígitos. Por ejemplo, la suma de los dígitos del 3433 es 13.  Para darle un poco más de emoción, el programa no se limitará a escribir el resultado de la suma, sino que también escribirá todos los sumandos utilizados: 3 + 4 + 3 + 3 = 13.
*/

int suma = 0;
string texto = "";
bool num = false;
string numeros;



do
{
    Console.Write("Ingrese un numero entero de 4 digitos: ");
    numeros = Console.ReadLine() ?? "";
    if (numeros.Length == 4)
    {
        num = true;
    }
    else
    {
        Console.WriteLine("Error: Debe ingresar exactamente 4 dígitos.");
    }
}
while (!num);


for (int i = 0; i < numeros.Length; i++)
{
    suma += numeros[i] - '0';
    if (i == numeros.Length - 1)
    {
        texto += numeros[i];
    }
    else
    {
        texto += numeros[i] + " + ";
    }
}

Console.WriteLine($"{texto} = {suma}");