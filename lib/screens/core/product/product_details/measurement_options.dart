import 'package:flutter/material.dart';

class MeasurementOptions extends StatefulWidget {
  @override
  _MeasurementOptionsState createState() => _MeasurementOptionsState();
}

class _MeasurementOptionsState extends State<MeasurementOptions> {
  final isSelected = [false, false];
  int selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    isSelected[selectedIndex] = true;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 12),
      child: Column(
        children: [
          ToggleButtons(
            children: [
              _optionTile('Provide a Sample'),
              _optionTile('Share Measurements'),
            ],
            selectedBorderColor: Theme.of(context).primaryColor,
            selectedColor: Theme.of(context).primaryColor,
            isSelected: isSelected,
            onPressed: (index) {
              setState(() {
                selectedIndex = index;
                isSelected[selectedIndex] = true;
                for (int i = 0; i < isSelected.length; i++) {
                  if (i != selectedIndex) isSelected[i] = false;
                }
              });
            },
          ),
          if (selectedIndex == 1) _measurements()
        ],
      ),
    );
  }

  Widget _optionTile(String title) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.4,
      child: Center(child: Text(title)),
    );
  }

  Widget _measurements() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _measurementTextField('Shoulders'),
            _measurementTextField('Bust'),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _measurementTextField('Waist Top'),
            _measurementTextField('Waist Bottom'),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _measurementTextField('Neck Width'),
            _measurementTextField('Neck Depth'),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _measurementTextField('Sleeve Length'),
            _measurementTextField('Cuff'),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _measurementTextField('Sleeve Opening'),
            _measurementTextField('Arm Hole'),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _measurementTextField('Bottom Length'),
            _measurementTextField('Thighs'),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _measurementTextField('Knees'),
            _measurementTextField('Bottom Hem'),
          ],
        ),
      ],
    );
  }

  Widget _measurementTextField(String labelName) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 12),
      width: MediaQuery.of(context).size.width * 0.4,
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
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              hintText: 'Inches',
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
