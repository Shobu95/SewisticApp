import 'package:flutter/material.dart';
import 'package:sewistic_app/models/order/order.dart';
import 'package:sewistic_app/screens/core/orders/widgets/order_card.dart';
import 'package:sewistic_app/services/orders_services.dart';

class Orders extends StatefulWidget {
  @override
  _OrdersState createState() => _OrdersState();
}

class _OrdersState extends State<Orders> {
  OrderService orderService = OrderService();
  List<Order> orders;

  @override
  void initState() {
    super.initState();
    orders = orderService.getOrders();
  }

  @override
  Widget build(BuildContext context) {
    return Container(color: Colors.grey[100], child: _orderList());
  }

  ListView _orderList() {
    return ListView.builder(
      itemCount: orders.length,
      padding: const EdgeInsets.all(8.0),
      scrollDirection: Axis.vertical,
      itemBuilder: (context, index) {
        return OrderCard(orders[index]);
      },
    );
  }
}
