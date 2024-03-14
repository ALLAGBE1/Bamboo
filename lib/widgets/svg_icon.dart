import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SvgIcon extends StatelessWidget {
  final String iconPath;
  final double size;
  final Color color;

  const SvgIcon({
    super.key,
    required this.iconPath,
    this.size = 24,
    this.color = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      iconPath,
      colorFilter: ColorFilter.mode(color, BlendMode.srcIn),
      height: size,
      width: size,
    );
  }
}
