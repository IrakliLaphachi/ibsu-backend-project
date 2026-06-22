package org.example.ecommerce.service;

import org.example.ecommerce.entity.Cart;
import org.example.ecommerce.entity.CartItem;
import org.example.ecommerce.entity.Product;
import org.example.ecommerce.entity.User;
import org.example.ecommerce.repository.CartItemRepository;
import org.example.ecommerce.repository.CartRepository;
import org.springframework.stereotype.Service;

@Service
public class CartService {

    private final CartRepository cartRepository;
    private final CartItemRepository cartItemRepository;
    private final ProductService productService;
    private final UserService userService;

    public CartService(CartRepository cartRepository, CartItemRepository cartItemRepository,
                       ProductService productService, UserService userService) {
        this.cartRepository = cartRepository;
        this.cartItemRepository = cartItemRepository;
        this.productService = productService;
        this.userService = userService;
    }

    public Cart getCartByUserId(Long userId) {
        return cartRepository.findByUserId(userId).orElseGet(() -> {
            User user = userService.getUserById(userId);
            Cart cart = new Cart();
            cart.setUser(user);
            return cartRepository.save(cart);
        });
    }

    public Cart addItem(Long userId, Long productId, int quantity) {
        Cart cart = getCartByUserId(userId);
        Product product = productService.getProductById(productId);

        CartItem item = cartItemRepository.findByCartIdAndProductId(cart.getId(), productId)
                .orElseGet(() -> {
                    CartItem newItem = new CartItem();
                    newItem.setCart(cart);
                    newItem.setProduct(product);
                    newItem.setQuantity(0);
                    return newItem;
                });

        item.setQuantity(item.getQuantity() + quantity);
        cartItemRepository.save(item);
        return cartRepository.findById(cart.getId()).orElseThrow();
    }

    public Cart updateItemQuantity(Long userId, Long productId, int quantity) {
        Cart cart = getCartByUserId(userId);
        CartItem item = cartItemRepository.findByCartIdAndProductId(cart.getId(), productId)
                .orElseThrow(() -> new RuntimeException("Item not found in cart"));
        item.setQuantity(quantity);
        cartItemRepository.save(item);
        return cartRepository.findById(cart.getId()).orElseThrow();
    }

    public Cart removeItem(Long userId, Long productId) {
        Cart cart = getCartByUserId(userId);
        CartItem item = cartItemRepository.findByCartIdAndProductId(cart.getId(), productId)
                .orElseThrow(() -> new RuntimeException("Item not found in cart"));
        cart.getItems().remove(item);
        cartItemRepository.delete(item);
        return cartRepository.findById(cart.getId()).orElseThrow();
    }

    public void clearCart(Long userId) {
        Cart cart = getCartByUserId(userId);
        cart.getItems().clear();
        cartRepository.save(cart);
    }
}
