import 'package:flutter/material.dart';
// ignore: implementation_imports
import 'package:settings_ui/src/abstract_section.dart';
// ignore: implementation_imports
import 'package:settings_ui/src/colors.dart';
// ignore: implementation_imports
import 'package:settings_ui/src/settings_section.dart';

class SettingsList extends StatelessWidget {
  final bool shrinkWrap;
  final ScrollPhysics physics;
  final List<AbstractSection> sections;
  final Color backgroundColor;
  final Color lightBackgroundColor;
  final Color darkBackgroundColor;

  const SettingsList({
    Key key,
    this.sections,
    this.backgroundColor,
    this.physics,
    this.shrinkWrap = false,
    this.lightBackgroundColor,
    this.darkBackgroundColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).brightness == Brightness.light
          ? backgroundColor ?? lightBackgroundColor ?? backgroundGray
          : backgroundColor ?? darkBackgroundColor ?? Colors.black,
      child: ListView.builder(
        physics: physics,
        shrinkWrap: shrinkWrap,
        itemCount: sections.length,
        itemBuilder: (context, index) {
          AbstractSection current = sections[index];
          AbstractSection futureOne;
          try {
            futureOne = sections[index + 1];
          } catch (e) {}

          // Add divider if title is null
          if (futureOne != null && futureOne.title != null) {
            current.showBottomDivider = false;
            return current;
          } else {
            current.showBottomDivider = true;
            return current;
          }
        },
      ),
    );
  }
}
