namespace GestionProductos
{
    public class ProductManager
    {
        public List<Product> products = new List<Product>();

        public void addProduct(Product product)
        {
            products.Add(product);
        }

        public Product? findProductByName(string name)
        {
            return products.FirstOrDefault(p => p.Name.Equals(name, StringComparison.OrdinalIgnoreCase));
        }


        public decimal calculateTotalPrice(Product product)
        {
            if (product.Category == "Electronica")
            {
                return product.Price * 1.10m; // 10% de IVA
            }
            else if (product.Category == "Alimentos")
            {
                return product.Price * 1.05m; // 5% de IVA
            }
            return product.Price;
        }

    }
}