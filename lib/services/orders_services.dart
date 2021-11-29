import 'package:flutter/material.dart';
import 'package:sewistic_app/models/order/order.dart';

class OrderService {
  List<Order> orders;

  List<Order> getOrders() {
    orders = <Order>[];

    orders.add(Order(
        '423465456',
        '12 Dec 2020',
        'Combo-Classic 3-piece Deal',
        2,
        '5000',
        'Pending',
        Colors.yellow[800]));

    orders.add(
      Order('764532123', '15 Jan 2020', 'Peplum Festive', 1, '1400',
          'Cancelled', Colors.red[500]),
    );

    orders.add(
      Order('232454345', '5 Jun 2020', 'Cape Classic', 4, '6500',
          'Delivered', Colors.green[800]),
    );

    orders.add(
      Order('674836453', '20 Aug 2020', 'Shirt-Collar Kurta Shalwar', 1,
          '950', 'Confirmed', Colors.blue[800]),
    );

    return orders;
  }
}
