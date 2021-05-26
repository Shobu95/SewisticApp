import 'package:flutter/material.dart';

class TitleDivider extends StatelessWidget {
  final String title;

  const TitleDivider(this.title);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: SizedBox(
        height: 45,
        child: IntrinsicWidth(
          child: Column(
            children: [
              Text(
                title,
                style: Theme.of(context).textTheme.headline6,
              ),
              Divider(
                thickness: 2,
                color: Theme.of(context).primaryColor,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
