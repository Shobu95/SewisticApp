import 'package:flutter/material.dart';
import 'package:sewistic_app/models/order/design_type.dart';
import 'package:sewistic_app/screens/core/product/product_details/measurement_options.dart';
import 'package:sewistic_app/screens/core/product/product_details/option_picker.dart';

Future<dynamic> orderOptions(
    BuildContext context, List<DesignType> designType) {
  return showModalBottomSheet<dynamic>(
    isScrollControlled: true,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(16),
        topRight: Radius.circular(16),
      ),
    ),
    context: context,
    builder: (BuildContext buildContext) {
      return ProductOptions(designType);
    },
  );
}

class ProductOptions extends StatelessWidget {
  List<DesignType> designTypes;
  ProductOptions(this.designTypes);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.85,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Icon(
            Icons.keyboard_arrow_down,
            size: 28,
            color: Colors.grey[600],
          ),
          _productOptionList(designTypes, context),
          _addToCartBtn(context),
        ],
      ),
    );
  }

  Widget _productOptionList(List<DesignType> designType, BuildContext context) {
    return Expanded(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children:
                      designTypes.map((type) => OptionPicker(type)).toList(),
                ),
                MeasurementOptions(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _addToCartBtn(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextButton(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Add To Cart',
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
            SizedBox(
              width: 14,
            ),
            Icon(
              Icons.add_shopping_cart,
              color: Colors.white,
            ),
          ],
        ),
        onPressed: () => Navigator.pop(context),
      ),
    );
  }
}
