import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:getxnavigation/controllers/navigation_controller.dart';
import 'package:getxnavigation/theme/color_palette.dart';
import 'package:getxnavigation/theme/constants.dart';
import 'package:getxnavigation/widgets/navigation_rail/navigation_rail_destination.dart';

import 'package:getxnavigation/enums/drawer_label.dart';

import 'list_labels.dart';

class ResponsiveNavigationRail extends GetView<NavigationController> {
  const ResponsiveNavigationRail({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(kSpaceS),
      child: Column(
        children: [
          for (final drw in listDrawerLabel)
            GetRouterOutlet.builder(
              builder: (context, delegate, currentRoute) =>
                  NavigationRailCustomDestination(
                label: drw.label,
                icon: Icon(
                  listDrawerLabel[listDrawerLabel.indexOf(drw)].iconData,
                  color: currentRoute!.location!.startsWith(drw.label.page)
                      ? kWhiteColor
                      : kBlue600,
                ),
              ),
            ),
          const Spacer(),
          Visibility(
            visible: context.width >= 1200,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: kSpaceS),
              child: MouseRegion(
                cursor: SystemMouseCursors.click,
                child: GestureDetector(
                  onTap: () {
                    controller.switchExpanded();
                  },
                  child: const Icon(
                    Icons.fast_forward_rounded,
                    color: kBlue600,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
