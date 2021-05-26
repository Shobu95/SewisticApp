import 'package:flutter/material.dart';
import 'package:sewistic_app/shared/constants.dart';

class SearchBar extends StatelessWidget {
  GlobalKey<ScaffoldState> scaffoldKey;

  SearchBar(this.scaffoldKey);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(40),
      ),
      elevation: Constants.CARD_ELEVATION,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14),
        child: Row(
          children: [
            Icon(Icons.search),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 14),
                child: TextField(
                  cursorColor: Theme.of(context).primaryColor,
                  decoration: InputDecoration(
                    hintText: 'Search for products',
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
            Material(
              color: Colors.transparent,
              shape: CircleBorder(),
              clipBehavior: Clip.hardEdge,
              child: InkWell(
                splashColor: Colors.pink[200],
                child: Container(
                  child: Icon(Icons.tune),
                ),
                onTap: () {
                  scaffoldKey.currentState.openEndDrawer();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
