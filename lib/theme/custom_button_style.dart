import 'dart:ui';
import 'package:pmis/core/app_export.dart';
import 'package:flutter/material.dart';

/// A class that offers pre-defined button styles for customizing button appearance.
class CustomButtonStyles {
  // Filled button style
  static ButtonStyle get fillPrimary => ElevatedButton.styleFrom(
        backgroundColor: theme.colorScheme.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(
              25.h,
            ),
            topRight: Radius.circular(
              24.h,
            ),
            bottomLeft: Radius.circular(
              25.h,
            ),
            bottomRight: Radius.circular(
              24.h,
            ),
          ),
        ),
      );

  // Gradient button style
  static BoxDecoration get gradientGreenAToErrorContainerDecoration =>
      BoxDecoration(
        borderRadius: BorderRadius.circular(25.h),
        boxShadow: [
          BoxShadow(
            color: appTheme.black90029,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              25,
            ),
          ),
        ],
        gradient: LinearGradient(
          begin: Alignment(1.03, 1),
          end: Alignment(0.0, 1),
          colors: [
            appTheme.greenA200,
            theme.colorScheme.errorContainer,
          ],
        ),
      );
  static BoxDecoration get gradientGreenAToErrorContainerTL24Decoration =>
      BoxDecoration(
        borderRadius: BorderRadius.circular(24.h),
        boxShadow: [
          BoxShadow(
            color: appTheme.black90029,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              18,
            ),
          ),
        ],
        gradient: LinearGradient(
          begin: Alignment(1.03, 1),
          end: Alignment(0.0, 1),
          colors: [
            appTheme.greenA200,
            theme.colorScheme.errorContainer,
          ],
        ),
      );

  // Outline button style
  static ButtonStyle get outlineBlueGrayTL20 => OutlinedButton.styleFrom(
        backgroundColor: Colors.transparent,
        side: BorderSide(
          color: appTheme.blueGray200,
          width: 1,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.h),
        ),
      );
  static ButtonStyle get outlinePrimary => OutlinedButton.styleFrom(
        backgroundColor: Colors.transparent,
        side: BorderSide(
          color: theme.colorScheme.primary,
          width: 1,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(
              25.h,
            ),
            topRight: Radius.circular(
              24.h,
            ),
            bottomLeft: Radius.circular(
              25.h,
            ),
            bottomRight: Radius.circular(
              24.h,
            ),
          ),
        ),
      );
  // text button style
  static ButtonStyle get none => ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
        elevation: MaterialStateProperty.all<double>(0),
      );
}
