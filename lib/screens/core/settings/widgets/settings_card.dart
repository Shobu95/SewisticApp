import 'package:flutter/material.dart';
import 'package:sewistic_app/shared/constants.dart';

class SettingsCard extends StatefulWidget {
  @override
  _SettingsCardState createState() => _SettingsCardState();
}

class _SettingsCardState extends State<SettingsCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: Constants.CARD_ELEVATION,
      child: Column(
        children: [
          _listTile("Personal Data", Icons.person_outline, () => null),
          _divider(2, 10),
          _listTile("My Addresses", Icons.location_on_outlined, () => null),
          _divider(2, 10),
          _listTile("Change Password", Icons.lock_outline, () => null),
          _divider(2, 10),
          _listTile("Logout", Icons.logout, () => null)
        ],
      ),
    );
  }

  Divider _divider(double _height, double _indent) {
    return Divider(
      height: _height,
      indent: _indent,
      endIndent: _indent,
      color: Colors.grey[500],
    );
  }

  ListTile _listTile(String _title, IconData _icon, _onTap()) {
    return ListTile(
      onTap: _onTap,
      leading: Icon(
        _icon,
        color: Theme.of(context).primaryColor,
      ),
      title: Text(
        _title,
      ),
    );
  }
}
