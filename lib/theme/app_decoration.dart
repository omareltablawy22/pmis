import 'package:flutter/material.dart';
import 'package:pmis/core/app_export.dart';

class AppDecoration {
  // Fill decorations
  static BoxDecoration get fillDeepOrange => BoxDecoration(
        color: appTheme.deepOrange400,
      );
  static BoxDecoration get fillIndigo => BoxDecoration(
        color: appTheme.indigo50,
      );
  static BoxDecoration get fillOnError => BoxDecoration(
        color: theme.colorScheme.onError,
      );
  static BoxDecoration get fillOnPrimary => BoxDecoration(
        color: theme.colorScheme.onPrimary,
      );
  static BoxDecoration get fillPrimaryContainer => BoxDecoration(
        color: theme.colorScheme.primaryContainer,
      );

  // Gradient decorations
  static BoxDecoration get gradientBlueGrayToBlueGray => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.5, 0),
          end: Alignment(0.5, 1),
          colors: [
            appTheme.blueGray200.withOpacity(0),
            appTheme.blueGray200,
          ],
        ),
      );

  // Outline decorations
  static BoxDecoration get outlineBlack => BoxDecoration(
        color: appTheme.gray100,
        boxShadow: [
          BoxShadow(
            color: appTheme.black90029,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              30,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineBlueGray => BoxDecoration(
        color: theme.colorScheme.onPrimary,
        border: Border.all(
          color: appTheme.blueGray200,
          width: 1.h,
        ),
        boxShadow: [
          BoxShadow(
            color: appTheme.black90029.withOpacity(0.03),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              30,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineBluegray200 => BoxDecoration(
        color: appTheme.gray100,
        border: Border.all(
          color: appTheme.blueGray200,
          width: 1.h,
        ),
        boxShadow: [
          BoxShadow(
            color: appTheme.black90029,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              30,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineGray => BoxDecoration(
        color: appTheme.teal40001,
        border: Border.all(
          color: appTheme.gray30011,
          width: 1.h,
        ),
        boxShadow: [
          BoxShadow(
            color: appTheme.black90029,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              30,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineGray30011 => BoxDecoration(
        color: theme.colorScheme.primary,
        border: Border.all(
          color: appTheme.gray30011,
          width: 1.h,
        ),
        boxShadow: [
          BoxShadow(
            color: appTheme.black90029,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              30,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineGreenA => BoxDecoration(
        color: appTheme.teal300,
        border: Border.all(
          color: appTheme.greenA20001,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineIndigoA => BoxDecoration(
        color: appTheme.black90029.withOpacity(0.1),
        boxShadow: [
          BoxShadow(
            color: appTheme.indigo4003a,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              30,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineTealC => BoxDecoration(
        color: appTheme.teal30004,
        boxShadow: [
          BoxShadow(
            color: appTheme.teal3006c,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              10,
            ),
          ),
        ],
      );
}

class BorderRadiusStyle {
  // Circle borders
  static BorderRadius get circleBorder23 => BorderRadius.circular(
        23.h,
      );
  static BorderRadius get circleBorder45 => BorderRadius.circular(
        45.h,
      );

  // Custom borders
  static BorderRadius get customBorderBL30 => BorderRadius.vertical(
        bottom: Radius.circular(30.h),
      );
  static BorderRadius get customBorderTL30 => BorderRadius.only(
        topLeft: Radius.circular(30.h),
        topRight: Radius.circular(29.h),
        bottomLeft: Radius.circular(30.h),
        bottomRight: Radius.circular(29.h),
      );
  static BorderRadius get customBorderTL9 => BorderRadius.vertical(
        top: Radius.circular(9.h),
      );

  // Rounded borders
  static BorderRadius get roundedBorder11 => BorderRadius.circular(
        11.h,
      );
  static BorderRadius get roundedBorder14 => BorderRadius.circular(
        14.h,
      );
  static BorderRadius get roundedBorder26 => BorderRadius.circular(
        26.h,
      );
}

// Comment/Uncomment the below code based on your Flutter SDK version.

// For Flutter SDK Version 3.7.2 or greater.

double get strokeAlignInside => BorderSide.strokeAlignInside;

double get strokeAlignCenter => BorderSide.strokeAlignCenter;

double get strokeAlignOutside => BorderSide.strokeAlignOutside;

// For Flutter SDK Version 3.7.1 or less.

// StrokeAlign get strokeAlignInside => StrokeAlign.inside;
//
// StrokeAlign get strokeAlignCenter => StrokeAlign.center;
//
// StrokeAlign get strokeAlignOutside => StrokeAlign.outside;
