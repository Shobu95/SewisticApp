import 'package:animations/animations.dart';
import 'package:flutter/material.dart';

Widget ProductToDetailsAnimation(
    {OpenContainerBuilder closedBuilder,
    ClosedCallback<bool> onClosed,
    Widget openingWidget}) {
  return OpenContainer<bool>(
    closedBuilder: closedBuilder,
    transitionType: ContainerTransitionType.fade,
    closedColor: Colors.transparent,
    closedElevation: 0,
    closedShape: RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(0.0)),
    ),
    onClosed: onClosed,
    tappable: false,
    openBuilder: (BuildContext context, VoidCallback callback) {
      return openingWidget;
    },
  );
}
