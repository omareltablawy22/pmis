import '../models/clienttestimonials_item_model.dart';
import 'package:flutter/material.dart';
import 'package:pmis/core/app_export.dart';

// ignore: must_be_immutable
class ClienttestimonialsItemWidget extends StatelessWidget {
  ClienttestimonialsItemWidget(
    this.clienttestimonialsItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ClienttestimonialsItemModel clienttestimonialsItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 137.h,
      child: Align(
        alignment: Alignment.centerRight,
        child: SizedBox(
          height: 137.adaptSize,
          width: 137.adaptSize,
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
                    imagePath: clienttestimonialsItemModelObj?.userImage,
                    height: 119.v,
                    width: 1.h,
                    alignment: Alignment.centerRight,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 46.h),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      CustomImageView(
                        imagePath: clienttestimonialsItemModelObj?.menuImage,
                        height: 60.v,
                        width: 31.h,
                      ),
                      SizedBox(height: 9.v),
                      Text(
                        clienttestimonialsItemModelObj.threeText!,
                        style: theme.textTheme.titleMedium,
                      ),
                      SizedBox(height: 5.v),
                      Text(
                        clienttestimonialsItemModelObj.velConsequatText!,
                        style: CustomTextStyles.helveticaNeueBluegray200Regular,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
