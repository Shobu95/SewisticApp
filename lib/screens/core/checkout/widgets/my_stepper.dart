import 'package:flutter/material.dart';
import 'package:sewistic_app/screens/core/checkout/widgets/account_details.dart';
import 'package:sewistic_app/screens/core/checkout/widgets/addresses.dart';
import 'package:sewistic_app/screens/core/checkout/widgets/delivery_and_payment.dart';
import 'package:sewistic_app/screens/core/checkout/widgets/order_summary.dart';

class MyStepper extends StatefulWidget {
  final int selectedIndex;

  const MyStepper({this.selectedIndex});

  @override
  _MyStepperState createState() => _MyStepperState();
}

class _MyStepperState extends State<MyStepper> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 22),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: _allSteps(),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(top: 12),
            child: _allStepContainers()[widget.selectedIndex - 1],
          )
        ],
      ),
    );
  }

  List<Widget> _allSteps() {
    return [
      _myStep('1', widget.selectedIndex),
      const Expanded(
        child: Divider(),
      ),
      _myStep('2', widget.selectedIndex),
      const Expanded(
        child: Divider(),
      ),
      _myStep('3', widget.selectedIndex),
      const Expanded(
        child: Divider(),
      ),
      _myStep('4', widget.selectedIndex),
    ];
  }

  List<Widget> _allStepContainers() {
    return [
      AccountDetails(),
      Addresses(),
      DeliveryAndPayment(),
      OrderSummary(),
    ];
  }

  Widget _myStep(String number, int selectedIndex) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 6),
      height: 30,
      width: 30,
      decoration: BoxDecoration(
        color: (number == selectedIndex.toString())
            ? Theme.of(context).primaryColor
            : Colors.grey[400],
        borderRadius: const BorderRadius.all(
          Radius.circular(16),
        ),
      ),
      child: Center(
        child: Text(
          number,
          style: TextStyle(
            color: (number == selectedIndex.toString())
                ? Colors.white
                : Colors.black,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
