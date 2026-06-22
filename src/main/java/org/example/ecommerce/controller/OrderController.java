package org.example.ecommerce.controller;

import org.example.ecommerce.entity.Order;
import org.example.ecommerce.enums.OrderStatus;
import org.example.ecommerce.service.OrderService;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/orders")
public class OrderController {

    private final OrderService orderService;

    public OrderController(OrderService orderService) {
        this.orderService = orderService;
    }

    @GetMapping
    public List<Order> getAllOrders() {
        return orderService.getAllOrders();
    }

    @GetMapping("/{id}")
    public ResponseEntity<Order> getOrderById(@PathVariable Long id) {
        return ResponseEntity.ok(orderService.getOrderById(id));
    }

    @GetMapping("/user/{userId}")
    public List<Order> getOrdersByUser(@PathVariable Long userId) {
        return orderService.getOrdersByUser(userId);
    }

    @PostMapping("/user/{userId}")
    public ResponseEntity<Order> placeOrder(@PathVariable Long userId,
                                            @RequestParam String shippingAddress) {
        return ResponseEntity.status(HttpStatus.CREATED).body(orderService.placeOrder(userId, shippingAddress));
    }

    @PatchMapping("/{id}/status")
    public ResponseEntity<Order> updateStatus(@PathVariable Long id,
                                              @RequestParam OrderStatus status) {
        return ResponseEntity.ok(orderService.updateOrderStatus(id, status));
    }
}
