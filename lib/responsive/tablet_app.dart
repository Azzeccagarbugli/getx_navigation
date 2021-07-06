import 'package:flutter/material.dart';
import 'package:getxnavigation/responsive/responsive_navigation/responsive_navigation_rail.dart';
import 'package:getxnavigation/routes/navigator_content.dart';
import 'package:getxnavigation/widgets/app_bar/app_bar_custom.dart';
import 'package:getxnavigation/widgets/common/divider_content.dart';

class TabletApp extends StatelessWidget {
  const TabletApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          const ResponsiveNavigationRail(),
          const DividerContent(),
          Expanded(
            child: Column(
              children: const [
                AppBarCustom(
                  showLogo: true,
                ),
                Expanded(
                  child: NavigatorContent(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
