import '../models/userprofileview_item_model.dart';
import 'package:flutter/material.dart';
import 'package:pmis/core/app_export.dart';

// ignore: must_be_immutable
class UserprofileviewItemWidget extends StatelessWidget {
  UserprofileviewItemWidget(
    this.userprofileviewItemModelObj, {
    Key? key,
    this.onTapWidget,
  }) : super(
          key: key,
        );

  UserprofileviewItemModel userprofileviewItemModelObj;

  VoidCallback? onTapWidget;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 56.v,
      width: 364.h,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Align(
            alignment: Alignment.center,
            child: GestureDetector(
              onTap: () {
                onTapWidget!.call();
              },
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 144.h,
                  vertical: 7.v,
                ),
                decoration: AppDecoration.outlineBlueGray.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder11,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 1.v),
                    CustomImageView(
                      imagePath: ImageConstant.imgRectangle1425BlueGray200,
                      height: 39.v,
                      width: 1.h,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.fromLTRB(17.h, 11.v, 17.h, 8.v),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        userprofileviewItemModelObj.userName!,
                        style: theme.textTheme.titleMedium,
                      ),
                      SizedBox(height: 5.v),
                      Text(
                        userprofileviewItemModelObj.userDescription!,
                        style: CustomTextStyles.helveticaNeueBluegray200Regular,
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        userprofileviewItemModelObj.userAge!,
                        style: theme.textTheme.titleMedium,
                      ),
                      SizedBox(height: 5.v),
                      Text(
                        userprofileviewItemModelObj.userLocation!,
                        style: CustomTextStyles.helveticaNeueBluegray200Regular,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
