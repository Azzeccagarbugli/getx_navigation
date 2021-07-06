import 'package:flutter/material.dart';
import 'package:getxnavigation/enums/drawer_label.dart';
import 'package:getxnavigation/models/drawer_list_label.dart';

final listDrawerLabel = <DrawerListLabel>[
  DrawerListLabel(
    label: DrawerLabel.chambers,
    title: 'Camere',
    subtitle: 'Sezione relativa alle camera',
    iconData: Icons.signal_cellular_alt_rounded,
  ),
  DrawerListLabel(
    label: DrawerLabel.notifications,
    title: 'Notifiche',
    subtitle: 'Sezione relativa alle notifiche',
    iconData: Icons.notifications_rounded,
  ),
  DrawerListLabel(
    label: DrawerLabel.connections,
    title: 'Connessioni',
    subtitle: 'Sezione relativa alle connessioni',
    iconData: Icons.camera_indoor_rounded,
  ),
  DrawerListLabel(
    label: DrawerLabel.users,
    title: 'Utenti',
    subtitle: 'Sezione relativa per gli utenti',
    iconData: Icons.people_alt_rounded,
  ),
  DrawerListLabel(
    label: DrawerLabel.system,
    title: 'Sistema',
    subtitle: 'Sezione relativa al sistema',
    iconData: Icons.dns_rounded,
  ),
];
