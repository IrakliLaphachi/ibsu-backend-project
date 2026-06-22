package org.example.ecommerce.service;

import org.example.ecommerce.entity.*;
import org.example.ecommerce.enums.OrderStatus;
import org.example.ecommerce.repository.OrderRepository;
import org.springframework.stereotype.Service;

import java.math.BigDecimal;
import java.util.List;

@Service
public class OrderService {

    private final OrderRepository orderRepository;
    private final CartService cartService;
    private final UserService userService;

    public OrderService(OrderRepository orderRepository, CartService cartService, UserService userService) {
        this.orderRepository = orderRepository;
        this.cartService = cartService;
        this.userService = userService;
    }

    public Order placeOrder(Long userId, String shippingAddress) {
        Cart cart = cartService.getCartByUserId(userId);
        if (cart.getItems().isEmpty()) {
            throw new RuntimeException("Cart is empty");
        }

        User user = userService.getUserById(userId);
        Order order = new Order();
        order.setUser(user);
        order.setShippingAddress(shippingAddress);

        BigDecimal total = BigDecimal.ZERO;
        for (CartItem cartItem : cart.getItems()) {
            OrderItem orderItem = new OrderItem();
            orderItem.setOrder(order);
            orderItem.setProduct(cartItem.getProduct());
            orderItem.setQuantity(cartItem.getQuantity());
            orderItem.setUnitPrice(cartItem.getProduct().getPrice());
            order.getItems().add(orderItem);
            total = total.add(cartItem.getProduct().getPrice()
                    .multiply(BigDecimal.valueOf(cartItem.getQuantity())));
        }

        order.setTotalAmount(total);
        Order saved = orderRepository.save(order);
        cartService.clearCart(userId);
        return saved;
    }

    public List<Order> getOrdersByUser(Long userId) {
        return orderRepository.findByUserId(userId);
    }

    public long countOrdersByUser(Long userId) {
        return orderRepository.countByUserId(userId);
    }

    public Order getOrderById(Long orderId) {
        return orderRepository.findById(orderId)
                .orElseThrow(() -> new RuntimeException("Order not found with id: " + orderId));
    }

    public Order updateOrderStatus(Long orderId, OrderStatus status) {
        Order order = getOrderById(orderId);
        order.setStatus(status);
        return orderRepository.save(order);
    }

    public List<Order> getAllOrders() {
        return orderRepository.findAll();
    }
}
