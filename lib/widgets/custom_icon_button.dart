import 'package:flutter/material.dart';
import 'package:pmis/core/app_export.dart';

class CustomIconButton extends StatelessWidget {
  CustomIconButton({
    Key? key,
    this.alignment,
    this.height,
    this.width,
    this.padding,
    this.decoration,
    this.child,
    this.onTap,
  }) : super(
          key: key,
        );

  final Alignment? alignment;

  final double? height;

  final double? width;

  final EdgeInsetsGeometry? padding;

  final BoxDecoration? decoration;

  final Widget? child;

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: iconButtonWidget,
          )
        : iconButtonWidget;
  }

  Widget get iconButtonWidget => SizedBox(
        height: height ?? 0,
        width: width ?? 0,
        child: IconButton(
          padding: EdgeInsets.zero,
          icon: Container(
            height: height ?? 0,
            width: width ?? 0,
            padding: padding ?? EdgeInsets.zero,
            decoration: decoration ??
                BoxDecoration(
                  color: appTheme.teal30004,
                  borderRadius: BorderRadius.circular(20.h),
                  boxShadow: [
                    BoxShadow(
                      color: appTheme.indigo4003a.withOpacity(0.44),
                      spreadRadius: 2.h,
                      blurRadius: 2.h,
                      offset: Offset(
                        0,
                        30,
                      ),
                    ),
                  ],
                ),
            child: child,
          ),
          onPressed: onTap,
        ),
      );
}

/// Extension on [CustomIconButton] to facilitate inclusion of all types of border style etc
extension IconButtonStyleHelper on CustomIconButton {
  static BoxDecoration get outlineTealC => BoxDecoration(
        color: appTheme.teal30004,
        borderRadius: BorderRadius.circular(23.h),
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
  static BoxDecoration get outlineBlack => BoxDecoration(
        color: appTheme.teal30001,
        borderRadius: BorderRadius.circular(13.h),
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
  static BoxDecoration get outlineBlackTL13 => BoxDecoration(
        color: theme.colorScheme.primaryContainer,
        borderRadius: BorderRadius.circular(13.h),
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
  static BoxDecoration get outlineBlackTL131 => BoxDecoration(
        color: appTheme.orangeA100,
        borderRadius: BorderRadius.circular(13.h),
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
  static BoxDecoration get outlineBlackTL132 => BoxDecoration(
        color: appTheme.pink30001,
        borderRadius: BorderRadius.circular(13.h),
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
}
