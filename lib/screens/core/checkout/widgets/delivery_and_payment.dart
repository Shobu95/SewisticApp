import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DeliveryAndPayment extends StatefulWidget {
  @override
  _DeliveryAndPaymentState createState() => _DeliveryAndPaymentState();
}

class _DeliveryAndPaymentState extends State<DeliveryAndPayment> {
  int _deliveryMethod = 1;
  int _free = 1;

  int _paymentMethod = 1;
  int _cashOnDelivery = 1;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            'Shipping and Payment ',
            style: Theme.of(context).textTheme.headline1,
          ),
          SizedBox(
            height: 28,
          ),
          _deliveryMethods(),
          SizedBox(
            height: 18,
          ),
          _paymentMethods(),
        ],
      ),
    );
  }

  Widget _deliveryMethods() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Shipping Method',
            style: Theme.of(context).textTheme.headline3,
          ),
          Row(
            children: [
              Radio(
                  value: _free,
                  groupValue: _deliveryMethod,
                  onChanged: (value) {
                    setState(() {
                      _paymentMethod = value;
                    });
                  }),
              Text("Free Pickup and Delivery")
            ],
          )
        ],
      ),
    );
  }

  Widget _paymentMethods() {
    return Container(
      padding: EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Payment Method',
            style: Theme.of(context).textTheme.headline3,
          ),
          Row(
            children: [
              Radio(
                  value: _cashOnDelivery,
                  groupValue: _paymentMethod,
                  onChanged: (value) {
                    setState(() {
                      _paymentMethod = value;
                    });
                  }),
              Text("Cash on Delivery")
            ],
          )
        ],
      ),
    );
  }
}
