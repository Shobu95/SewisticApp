import 'package:flutter/material.dart';
import '../core.dart';

class NavDrawer extends StatefulWidget {
  final Function notifyParent;
  int _selectedIndex;
  NavDrawer(this.notifyParent, this._selectedIndex);

  @override
  _NavDrawerState createState() => _NavDrawerState();
}

class _NavDrawerState extends State<NavDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            accountEmail: Text('ben.rogers@gmail.com'),
            accountName: Text('Benjamin Rogers'),
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage('assets/images/avatar.png'),
              radius: 40,
            ),
          ),
          _navDrawerItem('Home', Icons.home, 0, context),
          _navDrawerItem('Search', Icons.search, 1, context),
          _navDrawerItem('Wishlist', Icons.favorite, 2, context),
          _navDrawerItem('Orders', Icons.shopping_basket, 3, context),
          _navDrawerItem('Settings', Icons.settings, 4, context),
        ],
      ),
    );
  }

  ListTile _navDrawerItem(
      String title, IconData icon, int index, BuildContext context) {
    return ListTile(
      title: Text(title),
      leading: Icon(icon),
      selected: widget._selectedIndex == index,
      onTap: () {
        widget.notifyParent(index);
        Navigator.pop(context);
      },
    );
  }
}
