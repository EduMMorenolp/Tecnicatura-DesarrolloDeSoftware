namespace GestionProductos
{
    public class Product
    {
        public int Id { get; }
        public string Name { get; }
        public decimal Price { get; }
        public string Category { get; }

        public Product(int id, string name, decimal price, string category)
        {
            if (price < 0)
                throw new ArgumentException("El precio no puede ser negativo.");

            if (category != "Electronica" && category != "Alimentos")
                throw new ArgumentException("La categoría debe ser 'Electronica' o 'Alimentos'.");

            Id = id;
            Name = name;
            Price = price;
            Category = category;
        }
    }
}