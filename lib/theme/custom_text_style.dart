import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodySmall11 => theme.textTheme.bodySmall!.copyWith(
        fontSize: 11.fSize,
      );
  static get bodySmallGray600 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray600,
      );
  static get bodySmallGray60010 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray600,
        fontSize: 10.fSize,
      );
  static get bodySmallGray60011 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray600,
        fontSize: 11.fSize,
      );
  static get bodySmallGreenA20001 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.greenA20001,
        fontSize: 11.fSize,
      );
  static get bodySmallGreenA2000111 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.greenA20001,
        fontSize: 11.fSize,
      );
  static get bodySmallGreenA20002 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.greenA20002,
        fontSize: 11.fSize,
      );
  static get bodySmallGreenA2000211 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.greenA20002,
        fontSize: 11.fSize,
      );
  static get bodySmallOnPrimary => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.onPrimary,
        fontSize: 11.fSize,
      );
  static get bodySmallOnPrimary9 => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.onPrimary,
        fontSize: 9.fSize,
      );
  static get bodySmallPink30001 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.pink30001,
        fontSize: 11.fSize,
      );
  // Headline text style
  static get headlineMediumTeal300 => theme.textTheme.headlineMedium!.copyWith(
        color: appTheme.teal300,
        fontSize: 28.fSize,
      );
  static get headlineMediumTeal30004 =>
      theme.textTheme.headlineMedium!.copyWith(
        color: appTheme.teal30004,
        fontSize: 28.fSize,
      );
  // Helvetica text style
  static get helveticaNeueBluegray200 => TextStyle(
        color: appTheme.blueGray200,
        fontSize: 6.fSize,
        fontWeight: FontWeight.w400,
      ).helveticaNeue;
  static get helveticaNeueBluegray200Regular => TextStyle(
        color: appTheme.blueGray200,
        fontSize: 7.fSize,
        fontWeight: FontWeight.w400,
      ).helveticaNeue;
  // Label text style
  static get labelLargeOnError => theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.onError,
      );
  static get labelLargeOnPrimary => theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.onPrimary,
        fontSize: 13.fSize,
      );
  static get labelMediumOnPrimary => theme.textTheme.labelMedium!.copyWith(
        color: theme.colorScheme.onPrimary,
        fontSize: 10.fSize,
      );
  static get labelMediumOnPrimary_1 => theme.textTheme.labelMedium!.copyWith(
        color: theme.colorScheme.onPrimary,
      );
  static get labelMediumTeal300 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.teal300,
      );
  static get labelMediumTeal30004 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.teal30004,
      );
  // Title text style
  static get titleMedium16 => theme.textTheme.titleMedium!.copyWith(
        fontSize: 16.fSize,
      );
  static get titleMediumPrimary => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get titleMediumTeal300 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.teal300,
        fontSize: 16.fSize,
      );
  static get titleSmallOnPrimary => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onPrimary,
        fontSize: 15.fSize,
      );
  static get titleSmallOrange200 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.orange200,
        fontSize: 14.fSize,
      );
  static get titleSmallPink300 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.pink300,
        fontSize: 14.fSize,
      );
  static get titleSmallPrimary => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get titleSmallPrimaryContainer => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primaryContainer,
        fontSize: 14.fSize,
      );
  static get titleSmallTeal300 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.teal300,
      );
  static get titleSmallTeal30004 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.teal30004,
        fontSize: 14.fSize,
      );
}

extension on TextStyle {
  TextStyle get helveticaNeue {
    return copyWith(
      fontFamily: 'Helvetica Neue',
    );
  }
}
