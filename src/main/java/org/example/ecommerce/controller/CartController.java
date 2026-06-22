package org.example.ecommerce.controller;

import org.example.ecommerce.entity.Cart;
import org.example.ecommerce.service.CartService;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/api/cart")
public class CartController {

    private final CartService cartService;

    public CartController(CartService cartService) {
        this.cartService = cartService;
    }

    @GetMapping("/{userId}")
    public ResponseEntity<Cart> getCart(@PathVariable Long userId) {
        return ResponseEntity.ok(cartService.getCartByUserId(userId));
    }

    @PostMapping("/{userId}/items")
    public ResponseEntity<Cart> addItem(@PathVariable Long userId,
                                        @RequestParam Long productId,
                                        @RequestParam int quantity) {
        return ResponseEntity.ok(cartService.addItem(userId, productId, quantity));
    }

    @PutMapping("/{userId}/items")
    public ResponseEntity<Cart> updateItem(@PathVariable Long userId,
                                           @RequestParam Long productId,
                                           @RequestParam int quantity) {
        return ResponseEntity.ok(cartService.updateItemQuantity(userId, productId, quantity));
    }

    @DeleteMapping("/{userId}/items")
    public ResponseEntity<Cart> removeItem(@PathVariable Long userId,
                                           @RequestParam Long productId) {
        return ResponseEntity.ok(cartService.removeItem(userId, productId));
    }

    @DeleteMapping("/{userId}")
    public ResponseEntity<Void> clearCart(@PathVariable Long userId) {
        cartService.clearCart(userId);
        return ResponseEntity.noContent().build();
    }
}
