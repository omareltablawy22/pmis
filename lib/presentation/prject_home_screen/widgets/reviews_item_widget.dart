import '../models/reviews_item_model.dart';
import 'package:flutter/material.dart';
import 'package:pmis/core/app_export.dart';
import 'package:pmis/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class ReviewsItemWidget extends StatelessWidget {
  ReviewsItemWidget(
    this.reviewsItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ReviewsItemModel reviewsItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(3.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 7.v),
            child: CustomIconButton(
              height: 26.v,
              width: 27.h,
              padding: EdgeInsets.all(4.h),
              decoration: IconButtonStyleHelper.outlineBlack,
              child: CustomImageView(
                imagePath: ImageConstant.imageNotFound,
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(
                left: 8.h,
                bottom: 3.v,
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        reviewsItemModelObj.userName!,
                        style: CustomTextStyles.titleSmallTeal30004,
                      ),
                      Text(
                        reviewsItemModelObj.userPercentage!,
                        style: CustomTextStyles.titleSmallTeal30004,
                      ),
                    ],
                  ),
                  SizedBox(height: 4.v),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        reviewsItemModelObj.userDescription!,
                        style: CustomTextStyles.helveticaNeueBluegray200,
                      ),
                      Text(
                        reviewsItemModelObj.userDescription2!,
                        style: CustomTextStyles.helveticaNeueBluegray200,
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
