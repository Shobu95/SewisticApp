import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  final Function notifyParent;
  final int _selectedIndex;
  const BottomNavBar(this.notifyParent, this._selectedIndex);
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
    return <BottomNavigationBarItem>[
      const BottomNavigationBarItem(
        icon: Icon(Icons.home),
        label: 'Home',
      ),
      const BottomNavigationBarItem(
        icon: Icon(Icons.search),
        label: 'Search',
      ),
      const BottomNavigationBarItem(
        icon: Icon(Icons.favorite),
        label: 'Wishlist',
      ),
      const BottomNavigationBarItem(
        icon: Icon(Icons.shopping_basket),
        label: 'Orders',
      ),
      const BottomNavigationBarItem(
        icon: Icon(Icons.settings),
        label: 'Settings',
      ),
    ];
  }
}
