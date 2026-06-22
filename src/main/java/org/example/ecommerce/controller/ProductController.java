package org.example.ecommerce.controller;

import org.example.ecommerce.entity.Product;
import org.example.ecommerce.service.ProductService;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/products")
public class ProductController {

    private final ProductService productService;

    public ProductController(ProductService productService) {
        this.productService = productService;
    }

    @GetMapping
    public List<Product> getAllProducts() {
        return productService.getAllProducts();
    }

    @GetMapping("/{id}")
    public ResponseEntity<Product> getProductById(@PathVariable Long id) {
        return ResponseEntity.ok(productService.getProductById(id));
    }

    @GetMapping("/search")
    public List<Product> searchProducts(@RequestParam String name) {
        return productService.searchProducts(name);
    }

    @GetMapping("/category/{categoryId}")
    public List<Product> getProductsByCategory(@PathVariable Long categoryId) {
        return productService.getProductsByCategory(categoryId);
    }

    @PostMapping
    public ResponseEntity<Product> createProduct(@RequestBody Product product,
                                                  @RequestParam Long categoryId) {
        return ResponseEntity.status(HttpStatus.CREATED).body(productService.createProduct(product, categoryId));
    }

    @PutMapping("/{id}")
    public ResponseEntity<Product> updateProduct(@PathVariable Long id,
                                                  @RequestBody Product product,
                                                  @RequestParam(required = false) Long categoryId) {
        return ResponseEntity.ok(productService.updateProduct(id, product, categoryId));
    }

    @DeleteMapping("/{id}")
    public ResponseEntity<Void> deleteProduct(@PathVariable Long id) {
        productService.deleteProduct(id);
        return ResponseEntity.noContent().build();
    }
}
