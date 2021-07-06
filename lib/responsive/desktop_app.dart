import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxnavigation/controllers/navigation_controller.dart';
import 'package:getxnavigation/responsive/responsive_navigation/responsive_navigation_rail.dart';
import 'package:getxnavigation/routes/navigator_content.dart';
import 'package:getxnavigation/widgets/app_bar/app_bar_custom.dart';
import 'package:getxnavigation/widgets/common/divider_content.dart';

import 'responsive_navigation/responsive_drawer.dart';

class DesktopApp extends GetView<NavigationController> {
  const DesktopApp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetRouterOutlet.builder(
      builder: (context, delegate, currentRoute) {
        return Scaffold(
          body: Obx(
            () => Row(
              children: [
                if (controller.isExpanded.value)
                  const ResponsiveDrawer()
                else
                  const ResponsiveNavigationRail(),
                const DividerContent(),
                Expanded(
                  child: Column(
                    children: [
                      AppBarCustom(
                        showLogo: !controller.isExpanded.value,
                      ),
                      const Expanded(
                        child: NavigatorContent(),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
