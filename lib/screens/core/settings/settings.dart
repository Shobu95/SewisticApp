import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sewistic_app/screens/core/settings/widgets/profile_card.dart';
import 'package:sewistic_app/screens/core/settings/widgets/settings_card.dart';

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment(0.0, -1.0),
      color: Colors.grey[100],
      // this is profile card
      child: SingleChildScrollView(
        padding: EdgeInsets.all(8),
        child: Column(
          children: [
            ProfileCard(),
            SettingsCard(),
          ],
        ),
      ),
    );
  }
}
