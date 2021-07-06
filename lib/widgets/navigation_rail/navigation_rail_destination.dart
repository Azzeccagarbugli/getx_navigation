import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:getxnavigation/controllers/navigation_controller.dart';
import 'package:getxnavigation/enums/drawer_label.dart';
import 'package:getxnavigation/theme/color_palette.dart';
import 'package:getxnavigation/theme/constants.dart';

class NavigationRailCustomDestination extends GetView<NavigationController> {
  const NavigationRailCustomDestination({
    Key? key,
    required DrawerLabel label,
    required Icon icon,
  })  : _label = label,
        _icon = icon,
        super(key: key);

  final DrawerLabel _label;
  final Icon _icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: _label == DrawerLabel.chambers
          ? const EdgeInsets.only(top: kSpaceXXS, bottom: kSpaceS)
          : const EdgeInsets.symmetric(vertical: kSpaceS),
      child: ClipRRect(
        borderRadius: kBorderRadius,
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            hoverColor: kNeutralColor,
            onTap: () {
              controller.index(_label);
            },
            child: GetRouterOutlet.builder(
              builder: (context, delegate, currentRoute) => Container(
                decoration: BoxDecoration(
                  gradient: currentRoute!.location!.startsWith(_label.page)
                      ? kLinearGradientColor
                      : const LinearGradient(colors: [
                          Colors.transparent,
                          Colors.transparent,
                        ]),
                  borderRadius: kBorderRadius,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(kSpaceM),
                  child: _icon,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
