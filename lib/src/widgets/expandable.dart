import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';


class OverrideExpandableController extends ExpandableController {
  OverrideExpandableController._();

  static final instance = OverrideExpandableController._();
}

final shape = RoundedRectangleBorder(
  borderRadius: BorderRadius.circular(0),
);

class Expandable extends StatelessWidget {
  const Expandable(
      {required this.child,
      required this.header,
      required this.isExpand,
      required this.expandableController,
      this.color,
      this.iconColor,
      this.elevation,
      Key? key})
      : super(key: key);

  final Widget child;
  final Widget header;
  final bool isExpand;
  final ExpandableController expandableController;
  final Color? color;
  final Color? iconColor;
  final double? elevation;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: elevation ?? 0.0,
      margin: EdgeInsets.zero,
      color: color,
      shape: shape,
      child: ExpandablePanel(
        controller: expandableController,
        theme: isExpand
            ? ExpandableThemeData(
                iconColor: iconColor,
                headerAlignment: ExpandablePanelHeaderAlignment.center,
              )
            : const ExpandableThemeData(
                hasIcon: false,
                tapHeaderToExpand: false,
                headerAlignment: ExpandablePanelHeaderAlignment.center,
              ),
        header: header,
        collapsed: Container(),
        expanded: Card(
          elevation: elevation ?? 0.0,
          margin: EdgeInsets.zero,
          shape: shape,
          color: color,
          child: child,
        ),
      ),
    );
  }
}
