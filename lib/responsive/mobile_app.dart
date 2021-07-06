import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:getxnavigation/controllers/navigation_controller.dart';
import 'package:getxnavigation/responsive/responsive_navigation/responsive_bottom_bar.dart';
import 'package:getxnavigation/routes/navigator_content.dart';
import 'package:getxnavigation/theme/constants.dart';
import 'package:getxnavigation/widgets/app_bar/app_bar_custom.dart';

class MobileApp extends GetView<NavigationController> {
  const MobileApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kAppBarHeight),
        child: AppBarCustom(
          showLogo: true,
        ),
      ),
      bottomNavigationBar: ResponsiveBottomBar(),
      body: NavigatorContent(),
    );
  }
}
