import 'package:flutter/material.dart';
import 'package:sewistic_app/screens/core/cart/cart.dart';
import 'package:sewistic_app/screens/core/home/home.dart';
import 'package:sewistic_app/screens/core/orders/orders.dart';
import 'package:sewistic_app/screens/core/search/search.dart';
import 'package:sewistic_app/screens/core/settings/settings.dart';
import 'package:sewistic_app/screens/core/wishlist/wishlist.dart';
import 'core_widgets/bottom_nav_bar.dart';
import 'core_widgets/nav_drawer.dart';

class CoreScreen extends StatefulWidget {
  List<Widget> _coreScreens = [
    HomeScreen(),
    Search(),
    Wishlist(),
    Orders(),
    Settings()
  ];

  @override
  _CoreScreenState createState() => _CoreScreenState();
}

class _CoreScreenState extends State<CoreScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      drawer: NavDrawer(this.onItemTap, selectedIndex),
      bottomNavigationBar: BottomNavBar(this.onItemTap, selectedIndex),
      body: Container(
        color: Colors.grey[100],
        child: Center(
          child: widget._coreScreens[selectedIndex],
        ),
      ),
    );
  }

  Widget _appBar() {
    return AppBar(
      iconTheme: IconTheme.of(context),
      backgroundColor: Colors.white,
      elevation: 2,
      centerTitle: true,
      title: Image.asset(
        'assets/images/sewistic-logo-web.png',
        height: 45,
      ),
      actions: [
        IconButton(
          icon: Icon(Icons.shopping_cart),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Cart()),
            );
          },
        ),
      ],
    );
  }

  onItemTap(int index) {
    setState(() {
      selectedIndex = index;
    });
  }
}
