import '../models/recentorders_item_model.dart';
import 'package:flutter/material.dart';
import 'package:pmis/core/app_export.dart';

// ignore: must_be_immutable
class RecentordersItemWidget extends StatelessWidget {
  RecentordersItemWidget(
    this.recentordersItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  RecentordersItemModel recentordersItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 136.adaptSize,
      width: 136.adaptSize,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              height: 136.adaptSize,
              width: 136.adaptSize,
              padding: EdgeInsets.symmetric(
                horizontal: 53.h,
                vertical: 7.v,
              ),
              decoration: AppDecoration.outlineBluegray200.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder26,
              ),
              child: CustomImageView(
                imagePath: ImageConstant.imgRectangle1425119x1,
                height: 119.v,
                width: 1.h,
                alignment: Alignment.centerRight,
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: EdgeInsets.only(
                left: 41.h,
                right: 36.h,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CustomImageView(
                    imagePath: recentordersItemModelObj?.userImage,
                    height: 64.v,
                    width: 57.h,
                  ),
                  SizedBox(height: 4.v),
                  Text(
                    recentordersItemModelObj.userName!,
                    style: theme.textTheme.titleMedium,
                  ),
                  SizedBox(height: 5.v),
                  Text(
                    recentordersItemModelObj.userDescription!,
                    style: CustomTextStyles.helveticaNeueBluegray200Regular,
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
