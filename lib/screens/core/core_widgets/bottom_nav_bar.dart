import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  final Function notifyParent;
  int _selectedIndex;
  BottomNavBar(this.notifyParent, this._selectedIndex);
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: _bottomNavBarItems(),
      currentIndex: widget._selectedIndex,
      showUnselectedLabels: false,
      unselectedItemColor: Colors.grey,
      selectedItemColor: Theme.of(context).primaryColor,
      onTap: widget.notifyParent,
      elevation: 10,
    );
  }

  List<BottomNavigationBarItem> _bottomNavBarItems() {
    return const <BottomNavigationBarItem>[
      BottomNavigationBarItem(
        icon: Icon(Icons.home),
        label: 'Home',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.search),
        label: 'Search',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.favorite),
        label: 'Wishlist',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.shopping_basket),
        label: 'Orders',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.settings),
        label: 'Settings',
      ),
    ];
  }
}
