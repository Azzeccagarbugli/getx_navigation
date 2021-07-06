import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/route_manager.dart';
import 'package:getxnavigation/controllers/navigation_controller.dart';
import 'package:getxnavigation/responsive/responsive_navigation/list_labels.dart';
import 'package:getxnavigation/routes/app_pages.dart';
import 'package:getxnavigation/theme/color_palette.dart';

class ResponsiveBottomBar extends GetView<NavigationController> {
  const ResponsiveBottomBar({
    Key? key,
  }) : super(key: key);

  void _setIndex({required int index}) {
    controller.index(listDrawerLabel[index].label);
  }

  @override
  Widget build(BuildContext context) {
    return GetRouterOutlet.builder(
      builder: (context, delegate, currentRoute) {
        final _currentLocation = currentRoute?.location;
        int _currentIndex = 0;
        if (_currentLocation!.startsWith(Routes.chambers)) {
          _currentIndex = 0;
        }
        if (_currentLocation.startsWith(Routes.notifications)) {
          _currentIndex = 1;
        }
        if (_currentLocation.startsWith(Routes.connections)) {
          _currentIndex = 2;
        }

        return BottomNavigationBar(
          elevation: Theme.of(context).bottomAppBarTheme.elevation,
          items: <BottomNavigationBarItem>[
            for (final navigation in listDrawerLabel)
              BottomNavigationBarItem(
                label: navigation.title.toUpperCase(),
                icon: Icon(
                  navigation.iconData,
                ),
              ),
          ],
          selectedItemColor: kPrimaryColor,
          enableFeedback: true,
          selectedLabelStyle: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
          type: BottomNavigationBarType.fixed,
          unselectedItemColor: kNeutralColor,
          currentIndex: _currentIndex,
          onTap: (index) {
            _setIndex(index: index);
          },
        );
      },
    );
  }
}
