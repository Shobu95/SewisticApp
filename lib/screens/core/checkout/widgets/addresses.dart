import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Addresses extends StatefulWidget {
  @override
  _AddressesState createState() => _AddressesState();
}

class _AddressesState extends State<Addresses> {
  bool _shippingAddress = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            'Addresses',
            style: Theme.of(context).textTheme.headline1,
          ),
          SizedBox(
            height: 28,
          ),
          _textField('Address', TextInputType.streetAddress, 3),
          _textField('Town/City', TextInputType.name, 1),
          Row(
            children: [
              Checkbox(
                value: _shippingAddress,
                onChanged: (isSelected) {
                  setState(() {
                    _shippingAddress = isSelected;
                  });
                },
              ),
              Text(
                'Ship to a different address?',
                style: Theme.of(context).textTheme.headline3,
              ),
            ],
          ),
          _shippingAddress ? _shippingAddressFields() : Container(),
        ],
      ),
    );
  }

  Widget _shippingAddressFields() {
    return Column(
      children: [
        _textField('Shipping Address', TextInputType.streetAddress, 3),
        _textField('Town/City', TextInputType.name, 1),
      ],
    );
  }

  Widget _textField(String labelName, TextInputType inputType, int lines) {
    return Container(
      padding: EdgeInsets.only(bottom: 18, left: 6, right: 6),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            labelName,
            textAlign: TextAlign.left,
            style: Theme.of(context).textTheme.headline3,
          ),
          SizedBox(
            height: 8,
          ),
          TextField(
            style: TextStyle(fontSize: 18),
            keyboardType: inputType,
            maxLines: lines,
            decoration: InputDecoration(
              hintText: '',
              contentPadding: EdgeInsets.all(8),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(4.0)),
                borderSide: BorderSide(color: Colors.grey[700]),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(4.0)),
                borderSide: BorderSide(color: Colors.pink),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
