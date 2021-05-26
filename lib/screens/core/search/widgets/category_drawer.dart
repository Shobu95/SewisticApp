import 'package:flutter/material.dart';

List<String> menOptions = ['Kurta Shalwar'];

List<String> womenOptions = [
  'Kurti/Shirt',
  '2 piece suit',
  '3 piece suit',
  'Lehanga',
  'Peplum',
  'Bottoms'
];

List<String> sortingOptions = [
  'Price: high to low',
  'Price: low to high',
  'Popularity',
  'Average Rating',
  'Latest'
];

class CategoryDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      child: Drawer(
        child: Padding(
          padding: const EdgeInsets.only(top: 16, bottom: 8, left: 8),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(bottom: 8),
                  child: Text(
                    'Categories',
                    style: TextStyle(
                      fontSize: 20,
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                ),
                _categoryOptions('Men', menOptions),
                _categoryOptions('Women', womenOptions),
                _categoryOptions('Sort By', sortingOptions),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _categoryOptions(String categoryTitle, List<String> options) {
    return ExpansionTile(
      title: Text(
        categoryTitle,
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
      ),
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 8),
          child: ListView.builder(
            itemCount: options.length,
            shrinkWrap: true,
            physics: ClampingScrollPhysics(),
            itemBuilder: (context, index) {
              return ListTile(title: Text(options[index]), onTap: () => null);
            },
          ),
        ),
      ],
    );
  }
}
