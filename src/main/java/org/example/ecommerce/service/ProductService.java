package org.example.ecommerce.service;

import org.example.ecommerce.entity.Category;
import org.example.ecommerce.entity.Product;
import org.example.ecommerce.repository.ProductRepository;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ProductService {

    private final ProductRepository productRepository;
    private final CategoryService categoryService;

    public ProductService(ProductRepository productRepository, CategoryService categoryService) {
        this.productRepository = productRepository;
        this.categoryService = categoryService;
    }

    public List<Product> getAllProducts() {
        return productRepository.findAll();
    }

    public Product getProductById(Long id) {
        return productRepository.findById(id)
                .orElseThrow(() -> new RuntimeException("Product not found with id: " + id));
    }

    public List<Product> getProductsByCategory(Long categoryId) {
        return productRepository.findByCategoryId(categoryId);
    }

    public List<Product> searchProducts(String name) {
        return productRepository.findByNameContainingIgnoreCase(name);
    }

    public Product createProduct(Product product, Long categoryId) {
        Category category = categoryService.getCategoryById(categoryId);
        product.setCategory(category);
        return productRepository.save(product);
    }

    public Product updateProduct(Long id, Product updated, Long categoryId) {
        Product existing = getProductById(id);
        existing.setName(updated.getName());
        existing.setDescription(updated.getDescription());
        existing.setPrice(updated.getPrice());
        existing.setStockQuantity(updated.getStockQuantity());
        if (categoryId != null) {
            existing.setCategory(categoryService.getCategoryById(categoryId));
        }
        return productRepository.save(existing);
    }

    public void deleteProduct(Long id) {
        productRepository.deleteById(id);
    }
}
