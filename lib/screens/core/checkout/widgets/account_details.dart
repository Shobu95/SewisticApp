import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AccountDetails extends StatefulWidget {
  @override
  _AccountDetailsState createState() => _AccountDetailsState();
}

class _AccountDetailsState extends State<AccountDetails> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            'Personal Details',
            style: Theme.of(context).textTheme.headline1,
          ),
          const SizedBox(
            height: 28,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(child: _textField('First Name', TextInputType.name)),
              Expanded(child: _textField('Last Name', TextInputType.name)),
            ],
          ),
          _textField('Email', TextInputType.emailAddress),
          _textField('Phone Number', TextInputType.phone),
        ],
      ),
    );
  }

  Widget _textField(String labelName, TextInputType inputType) {
    return Container(
      padding: const EdgeInsets.only(bottom: 18, left: 6, right: 6),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            labelName,
            textAlign: TextAlign.left,
            style: Theme.of(context).textTheme.headline3,
          ),
          const SizedBox(
            height: 8,
          ),
          TextField(
            style: const TextStyle(fontSize: 18),
            keyboardType: inputType,
            decoration: InputDecoration(
              hintText: '',
              contentPadding: const EdgeInsets.all(8),
              enabledBorder: OutlineInputBorder(
                borderRadius: const BorderRadius.all(Radius.circular(4.0)),
                borderSide: BorderSide(color: Colors.grey[700]),
              ),
              focusedBorder: const OutlineInputBorder(
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
