import 'package:flutter/material.dart';
import 'package:getxnavigation/theme/color_palette.dart';
import 'package:getxnavigation/theme/constants.dart';

class AppBarIcon extends StatelessWidget {
  const AppBarIcon({
    Key? key,
    required Function() onTap,
    required Widget child,
    String? picProfile,
  })  : _onTap = onTap,
        _child = child,
        _picProfile = picProfile,
        super(key: key);

  final Function() _onTap;
  final Widget _child;
  final String? _picProfile;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: _onTap,
        child: Container(
          padding: const EdgeInsets.all(kSpaceXS),
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: kNeutralColor,
                offset: Offset(4.0, 4.0),
                blurRadius: 12.0,
                spreadRadius: 1.0,
              ),
              BoxShadow(
                color: Colors.white,
                offset: Offset(-4.0, -4.0),
                blurRadius: 12.0,
                spreadRadius: 1.0,
              ),
            ],
          ),
          child: CircleAvatar(
            backgroundColor: Colors.transparent,
            backgroundImage: _picProfile != null
                ? NetworkImage(
                    _picProfile!,
                  )
                : null,
            child: _child,
          ),
        ),
      ),
    );
  }
}
