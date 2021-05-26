import 'package:flutter/material.dart';
import 'package:sewistic_app/models/order/order.dart';
import 'package:sewistic_app/shared/constants.dart';

class OrderCard extends StatelessWidget {
  Order order;
  OrderCard(this.order);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Card(
        elevation: Constants.CARD_ELEVATION,
        child: Padding(
          padding: const EdgeInsets.all(14.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'ID: ' + order.orderId,
                    style: Theme.of(context).textTheme.headline4,
                  ),
                  Text(
                    order.date,
                    style: Theme.of(context).textTheme.headline3,
                  ),
                ],
              ),
              SizedBox(
                height: 14,
              ),
              Text(
                order.productName,
                style: Theme.of(context).textTheme.headline1,
              ),
              SizedBox(
                height: 4,
              ),
              order.noOfProducts > 1
                  ? Text((order.noOfProducts - 1).toString() + ' more items')
                  : SizedBox(),
              SizedBox(
                height: 4,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    'Rs. ' + order.totalAmount + ' /=',
                    style: Theme.of(context).textTheme.headline2,
                  ),
                  Container(
                    padding: const EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      border: Border.all(color: order.statusColor, width: 1.5),
                      borderRadius: BorderRadius.all(
                        Radius.circular(3),
                      ),
                    ),
                    child: Text(
                      order.status,
                      style: TextStyle(
                          color: order.statusColor,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
