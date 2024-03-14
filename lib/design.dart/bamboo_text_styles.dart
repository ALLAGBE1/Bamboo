import 'package:flutter/material.dart';

abstract class TextStyles {
  static const TextStyle body1Regular = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    height: 1.5,
    fontStyle: FontStyle.normal,
    decoration: TextDecoration.none,
  );

  static const TextStyle body1Bold = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w700,
    height: 1.5,
    fontStyle: FontStyle.normal,
    decoration: TextDecoration.none,
  );

  static const TextStyle body1Link = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w700,
    height: 1.5,
    fontStyle: FontStyle.normal,
    decoration: TextDecoration.underline,
  );

  static const TextStyle body2Regular = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    height: 1.71,
    fontStyle: FontStyle.normal,
    decoration: TextDecoration.none,
  );

  static const TextStyle body2Bold = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w700,
    height: 1.71,
    fontStyle: FontStyle.normal,
    decoration: TextDecoration.none,
  );

  static const TextStyle body2Link = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w700,
    height: 1.71,
    fontStyle: FontStyle.normal,
    decoration: TextDecoration.underline,
  );

  static const TextStyle captionRegular = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    height: 1.67,
    fontStyle: FontStyle.normal,
    decoration: TextDecoration.none,
  );

  static const TextStyle captionBold = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w700,
    height: 1.67,
    fontStyle: FontStyle.normal,
    decoration: TextDecoration.none,
  );

  static const TextStyle captionLink = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w700,
    height: 1.67,
    fontStyle: FontStyle.normal,
    decoration: TextDecoration.underline,
  );

  static const TextStyle heading1 = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w700,
    height: 1.33,
    letterSpacing: -0.48,
    fontStyle: FontStyle.normal,
    decoration: TextDecoration.none,
  );

  static const TextStyle heading2 = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w700,
    height: 1.2,
    letterSpacing: -0.4,
    fontStyle: FontStyle.normal,
    decoration: TextDecoration.none,
  );

  static const TextStyle heading3 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w700,
    height: 1.5,
    letterSpacing: -0.32,
    fontStyle: FontStyle.normal,
    decoration: TextDecoration.none,
  );

  static const TextStyle subheading = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w700,
    height: 1.5,
    letterSpacing: -0.32,
    fontStyle: FontStyle.normal,
    decoration: TextDecoration.none,
  );

  static const TextStyle displayLargeRegular = TextStyle(
    fontSize: 56,
    fontWeight: FontWeight.w400,
    height: 1.14,
    letterSpacing: -1.12,
    fontStyle: FontStyle.normal,
    decoration: TextDecoration.none,
  );

  static const TextStyle displayLargeBold = TextStyle(
    fontSize: 56,
    fontWeight: FontWeight.w700,
    height: 1.14,
    letterSpacing: -1.12,
    fontStyle: FontStyle.normal,
    decoration: TextDecoration.none,
  );

  static const TextStyle displaySmallRegular = TextStyle(
    fontSize: 48,
    fontWeight: FontWeight.w400,
    height: 1.25,
    letterSpacing: -0.96,
    fontStyle: FontStyle.normal,
    decoration: TextDecoration.none,
  );

  static const TextStyle displaySmallBold = TextStyle(
    fontSize: 48,
    fontWeight: FontWeight.w700,
    height: 1.25,
    letterSpacing: -0.96,
    fontStyle: FontStyle.normal,
    decoration: TextDecoration.none,
  );
}
