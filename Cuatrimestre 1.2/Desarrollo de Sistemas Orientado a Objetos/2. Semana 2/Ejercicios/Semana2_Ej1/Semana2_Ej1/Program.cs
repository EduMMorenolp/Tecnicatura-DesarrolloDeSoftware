


using Semana2_Ej1;

SuperHeroe superHeroe1 = new SuperHeroe("Batman", 90, 70, 0);
SuperHeroe superHeroe2 = new SuperHeroe("Superman", 95, 60, 70);

string resultado = superHeroe1.Competir(superHeroe2);

Console.WriteLine(resultado);

string resultado2 = superHeroe2.Competir(superHeroe1);

Console.WriteLine(resultado2);

SuperHeroe superHeroe3 = new SuperHeroe("Invensible", 120, 500, -30);

Console.WriteLine($"Fuerza: {superHeroe3.Fuerza}, Superpoderes: {superHeroe3.Superpoderes}, Resistencia: {superHeroe3.Resistencia}, Nombre: {superHeroe3.Nombre}");
