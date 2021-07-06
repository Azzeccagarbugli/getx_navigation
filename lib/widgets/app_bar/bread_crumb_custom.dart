import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_breadcrumb/flutter_breadcrumb.dart';
import 'package:get/get.dart';
import 'package:getxnavigation/theme/color_palette.dart';
import 'package:getxnavigation/theme/constants.dart';

class BreadCrumpCustom extends StatelessWidget {
  const BreadCrumpCustom({Key? key}) : super(key: key);

  BreadCrumbItem _createItem({required String item, required bool disable}) {
    return BreadCrumbItem(
      color: kSecondaryColor,
      borderRadius: kBorderRadius * 2,
      padding: const EdgeInsets.symmetric(
        vertical: kSpaceXS,
        horizontal: kSpaceS,
      ),
      disableColor: kNeutralColor,
      onTap: !disable
          ? () {
              Get.getDelegate()?.toNamed('/$item');
            }
          : null,
      content: AutoSizeText(
        item.toUpperCase(),
        textAlign: TextAlign.center,
        minFontSize: 8,
        maxFontSize: 10,
        style: const TextStyle(
          letterSpacing: .5,
          fontWeight: FontWeight.bold,
          color: kWhiteColor,
        ),
      ),
    );
  }

  List<String> _splitNavigation({required String? location}) {
    return location!.split('/').sublist(1);
  }

  List<BreadCrumbItem> _createPath({required List<String> items}) {
    final List<BreadCrumbItem> _path = [];

    for (final item in items) {
      _path.add(
        _createItem(
          item: item,
          disable: items.indexOf(item) == items.length - 1,
        ),
      );
    }

    return _path;
  }

  @override
  Widget build(BuildContext context) {
    return GetRouterOutlet.builder(
      builder: (context, delegate, currentRoute) {
        final _list = _splitNavigation(location: currentRoute!.location);

        return BreadCrumb(
          overflow: ScrollableOverflow(),
          items: <BreadCrumbItem>[
            _createItem(item: 'Home', disable: false),
            ..._createPath(items: _list),
          ],
          divider: const Icon(
            Icons.chevron_right_rounded,
            color: kNeutralColor,
          ),
        );
      },
    );
  }
}
