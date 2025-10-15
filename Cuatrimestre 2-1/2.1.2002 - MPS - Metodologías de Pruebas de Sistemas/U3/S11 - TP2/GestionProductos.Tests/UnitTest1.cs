using NUnit.Framework;

namespace GestionProductos.Tests
{
    [TestProduct]
    public class Tests
    {
        private ProductManager manager;

        [SetUp]
        public void Setup()
        {
            manager = new ProductManager();
        }

        [Test]
        public void CrearProducto()
        {
            var product = new Product(1, "Laptop", 1000m, "Electronica");

            Assert.That(product.Id, Is.EqualTo(1));
            Assert.That(product.Name, Is.EqualTo("Laptop"));
            Assert.That(product.Price, Is.EqualTo(1000m));
            Assert.That(product.Category, Is.EqualTo("Electronica"));
        }

        [Test]
        public void AgregarProducto()
        {
            var product = new Product(1, "Laptop", 1000m, "Electronica");

            manager.addProduct(product);

            Assert.That(manager.products.Count, Is.EqualTo(1));
        }

        [Test]
        public void BuscarProductoPorNombre()
        {
            var laptop = new Product(1, "Laptop", 1000m, "Electronica");
            var mouse = new Product(2, "Mouse", 50m, "Electronica");
            manager.addProduct(laptop);
            manager.addProduct(mouse);

            var found = manager.findProductByName("Mouse");

            Assert.That(found, Is.Not.Null);
            Assert.That(found.Name, Is.EqualTo("Mouse"));
            Assert.That(found.Id, Is.EqualTo(2));
        }

        [Test]
        public void CalcularPrecioTotalConImpuestos()
        {
            var product = new Product(1, "Laptop", 1000m, "Electronica");

            var total = manager.calculateTotalPrice(product);

            Assert.That(total, Is.EqualTo(1100m)); // 1000 + 10% = 1100
        }

        [Test]
        public void CalcularPrecioTotalConImpuestosAlimentos()
        {
            var product = new Product(2, "Pan", 100m, "Alimentos");

            var total = manager.calculateTotalPrice(product);

            Assert.That(total, Is.EqualTo(105m)); // 100 + 5% = 105
        }
    }
}