import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:getxnavigation/controllers/navigation_controller.dart';
import 'package:getxnavigation/theme/constants.dart';
import 'package:getxnavigation/widgets/drawer/drawer_button.dart';
import 'package:getxnavigation/widgets/drawer/drawer_collapse.dart';
import 'package:getxnavigation/widgets/drawer/drawer_custom_header.dart';
import 'package:getxnavigation/enums/drawer_label.dart';

import 'list_labels.dart';

class ResponsiveDrawer extends GetView<NavigationController> {
  const ResponsiveDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: context.width * kFactorDrawerReducer,
      child: Drawer(
        elevation: 0.0,
        child: Column(
          children: <Widget>[
            const DrawerCustomHeader(),
            for (final drw in listDrawerLabel)
              GetRouterOutlet.builder(
                builder: (context, delegate, currentRoute) => DrawerButton(
                  onTap: () {
                    controller.index(drw.label);
                  },
                  isSelected:
                      currentRoute!.location!.startsWith(drw.label.page),
                  drw: drw,
                ),
              ),
            const Spacer(),
            const DrawerCollapse(),
          ],
        ),
      ),
    );
  }
}
