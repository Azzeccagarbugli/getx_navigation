import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:getxnavigation/controllers/navigation_controller.dart';
import 'package:getxnavigation/theme/color_palette.dart';
import 'package:getxnavigation/theme/constants.dart';

class DrawerCollapse extends GetView<NavigationController> {
  const DrawerCollapse({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () {
          controller.switchExpanded();
        },
        child: Container(
          color: Colors.transparent,
          padding: const EdgeInsets.all(kSpaceM),
          child: Row(
            children: [
              const Spacer(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: AutoSizeText(
                  'Collassa pannello'.toUpperCase(),
                  style: TextStyle(
                    color: kBlue600.withOpacity(.5),
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
