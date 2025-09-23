namespace test;


public class Calculadora()
{

    public int Sumar(int a, int b)
    {
        return a + b;
    }

    public int Restar(int a, int b)
    {
        return a - b;
    }

    public int Dividir(int a, int b)
    {
        if (b == 0)
        {
            throw new DivideByZeroException("No se puede dividir por cero");
        }
        return a / b;
    }

    public bool EsPar(int a)
    {
        return a % 2 == 0;
    }    
}

public class Tests
{
    private Calculadora calc = new Calculadora();

    [SetUp]
    public void Setup()
    {
    }

    [Test]
    public void TestSuma()
    {
        var n1 = 2;
        var n2 = 3;
        var esperado = 5;
        var resultado = calc.Sumar(n1, n2);
        Assert.That(resultado, Is.EqualTo(esperado), $"La suma de {n1} y {n2} debe ser {esperado}");
    }

    [Test]
    public void TestDivision()
    {
        var n1 = 6;
        var n2 = 2;
        var esperado = 3;
        var resultado = calc.Dividir(n1, n2);
        Assert.That(resultado, Is.EqualTo(esperado), $"La division de {n1} y {n2} debe ser {esperado}");
    }

    [Test]
    public void EsPar()
    {
        var n1 = 5;
        var resultado = calc.EsPar(n1);
        Assert.That(resultado, Is.True, $"{n1} es par");
    }
}
