import '../models/userprofilelist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:pmis/core/app_export.dart';

// ignore: must_be_immutable
class UserprofilelistItemWidget extends StatelessWidget {
  UserprofilelistItemWidget(
    this.userprofilelistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  UserprofilelistItemModel userprofilelistItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 25.h,
        vertical: 18.v,
      ),
      decoration: AppDecoration.outlineGray30011.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder26,
      ),
      width: 176.h,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgMaximize,
            height: 36.v,
            width: 27.h,
          ),
          SizedBox(height: 18.v),
          Text(
            userprofilelistItemModelObj.userName!,
            style: CustomTextStyles.labelMediumTeal30004,
          ),
          SizedBox(height: 6.v),
          SizedBox(
            width: 103.h,
            child: Text(
              userprofilelistItemModelObj.userDescription!,
              maxLines: 4,
              overflow: TextOverflow.ellipsis,
              style: CustomTextStyles.bodySmallOnPrimary.copyWith(
                height: 1.18,
              ),
            ),
          ),
          Text(
            userprofilelistItemModelObj.userFollowers!,
            style: CustomTextStyles.labelMediumTeal30004,
          ),
          SizedBox(height: 3.v),
          Text(
            userprofilelistItemModelObj.userBio!,
            style: CustomTextStyles.labelMediumOnPrimary_1,
          ),
          SizedBox(height: 6.v),
        ],
      ),
    );
  }
}
