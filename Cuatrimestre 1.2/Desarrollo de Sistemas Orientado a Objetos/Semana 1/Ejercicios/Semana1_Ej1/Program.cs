/**
El precio de los productos no tiene incluido el incremento del 15% que representa la ganancia del negocio, por lo tanto, el algoritmo debe calcular el precio final a abonar por un cliente. Se ingresa el precio del producto y como resultado muestra el precio de venta.
*/

Console.Write("Ingrese el precio del producto : ");
double monto = Convert.ToDouble(Console.ReadLine());
double incremento = 15 / 100.0;
double precioFinal = monto + (monto * incremento);
Console.WriteLine($"El precio a pagar es : {precioFinal}");