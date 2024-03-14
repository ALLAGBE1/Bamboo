// import 'package:colec_design_system/tokens/textStyle.dart';
import 'package:bamboo/widgets/svg_icon.dart';
import 'package:flutter/material.dart';

class Rule extends StatelessWidget {
  const Rule({
    super.key,
    required this.iconPath,
    required this.labelText,
    required this.iconColor,
    required this.color,
  });
  final String iconPath;
  final String labelText;
  final Color iconColor;

  final Color color;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgIcon(
          iconPath: iconPath,
          color: iconColor,
        ),
        Text(
          labelText,
          // style: TextStyles.body2Bold.copyWith(color: color),
        )
      ],
    );
  }
}
