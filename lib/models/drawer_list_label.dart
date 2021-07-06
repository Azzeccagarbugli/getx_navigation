import 'package:flutter/material.dart';
import 'package:getxnavigation/enums/drawer_label.dart';

class DrawerListLabel {
  DrawerListLabel({
    required this.title,
    required this.subtitle,
    required this.iconData,
    required this.label,
  });

  final String title;
  final String subtitle;
  final IconData iconData;
  final DrawerLabel label;
}
