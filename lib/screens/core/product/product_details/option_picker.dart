import 'package:flutter/material.dart';
import 'package:sewistic_app/models/order/design_type.dart';

class OptionPicker extends StatefulWidget {
  final DesignType designType;

  const OptionPicker(this.designType);

  @override
  _OptionPickerState createState() => _OptionPickerState();
}

class _OptionPickerState extends State<OptionPicker> {
  List<bool> isSelected = [];
  DesignType _designType;
  int selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    this._designType = widget.designType;
    isSelected = _getSelected(_designType.designOptions.length);
    isSelected[selectedIndex] = true;
    for (int i = 0; i < isSelected.length; i++) {
      if (i != selectedIndex) isSelected[i] = false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ExpansionTile(
        title: Text(
          _designType.typeName +
              ": " +
              _designType.designOptions[selectedIndex].optionName,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: ToggleButtons(
              children: _designType.designOptions
                  .map((item) => _optionTile(item.optionImage))
                  .toList(),
              selectedBorderColor: Colors.black,
              onPressed: (index) {
                setState(
                  () {
                    selectedIndex = index;
                    isSelected[selectedIndex] = true;
                    for (int i = 0; i < isSelected.length; i++) {
                      if (i != selectedIndex) isSelected[i] = false;
                    }
                  },
                );
              },
              isSelected: isSelected,
            ),
          ),
        ],
      ),
    );
  }

  Widget _optionTile(String optionImage) {
    return Container(
      width: 50,
      margin: const EdgeInsets.symmetric(horizontal: 2),
      child: Image.asset(optionImage),
    );
  }

  List<bool> _getSelected(int length) {
    List<bool> selected = <bool>[];
    for (int i = 0; i < length; i++) {
      selected.add(false);
    }
    return selected;
  }
}
