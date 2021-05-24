package service;
import model.Product;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class ProductService implements IProductService {
    private static Map<Integer, Product> products = new HashMap<>();

    static {
        products.put(1, new Product(1, "Iphone 6", 1000, "Like new 99%"));
        products.put(2, new Product(2, "Iphone 7", 2000, "Like new 99%"));
        products.put(3, new Product(3, "Iphone 8", 3000, "Like new 99%"));
        products.put(4, new Product(4, "Iphone 10", 4000, "Like new 99%"));
        products.put(5, new Product(5, "Iphone X", 5000, "Like new 99%"));
        products.put(6, new Product(6, "Iphone XS Max", 6000, "Like new 99%"));
    }

    @Override
    public List<Product> findAll() {
        return new ArrayList<>(products.values());
    }

    @Override
    public Product save(Product product) {
        return products.put(product.getId(), product);
    }

    @Override
    public Product updateById(int id, Product product) {
        return products.replace(id, product);
    }

    @Override
    public Product findById(int id) {
        return products.get(id);
    }

    @Override
    public void deleteById(int id) {
        products.remove(id);
    }
}
