import 'bloc/loading_bloc.dart';
import 'models/loading_model.dart';
import 'package:flutter/material.dart';
import 'package:pmis/core/app_export.dart';

class LoadingScreen extends StatelessWidget {
  const LoadingScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<LoadingBloc>(
      create: (context) => LoadingBloc(LoadingState(
        loadingModelObj: LoadingModel(),
      ))
        ..add(LoadingInitialEvent()),
      child: LoadingScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<LoadingBloc, LoadingState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: SizedBox(
              width: double.maxFinite,
              child: Column(
                children: [
                  SizedBox(height: 88.v),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgGroup231Indigo30084x126,
                            height: 84.v,
                            width: 126.h,
                          ),
                          SizedBox(height: 112.v),
                          _buildLoadingScreen(context),
                          SizedBox(height: 4.v),
                          Align(
                            alignment: Alignment.centerRight,
                            child: Padding(
                              padding: EdgeInsets.only(
                                left: 114.h,
                                right: 64.h,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CustomImageView(
                                    imagePath: ImageConstant.imgLocationTeal400,
                                    height: 25.v,
                                    width: 24.h,
                                    margin: EdgeInsets.only(
                                      top: 7.v,
                                      bottom: 34.v,
                                    ),
                                  ),
                                  Spacer(
                                    flex: 37,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(bottom: 47.v),
                                    child: Text(
                                      "lbl_logged_in".tr,
                                      style:
                                          CustomTextStyles.titleMediumTeal300,
                                    ),
                                  ),
                                  Spacer(
                                    flex: 62,
                                  ),
                                  CustomImageView(
                                    imagePath: ImageConstant.imgPolygon5,
                                    height: 47.v,
                                    width: 49.h,
                                    margin: EdgeInsets.only(top: 19.v),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: 10.v),
                          SizedBox(
                            height: 1068.v,
                            width: double.maxFinite,
                            child: Stack(
                              alignment: Alignment.topRight,
                              children: [
                                Align(
                                  alignment: Alignment.bottomCenter,
                                  child: SizedBox(
                                    height: 991.v,
                                    width: double.maxFinite,
                                    child: Stack(
                                      alignment: Alignment.topLeft,
                                      children: [
                                        CustomImageView(
                                          imagePath:
                                              ImageConstant.imgPolygon1Teal400,
                                          height: 283.v,
                                          width: 430.h,
                                          alignment: Alignment.topCenter,
                                        ),
                                        CustomImageView(
                                          imagePath:
                                              ImageConstant.imgPolygon9Teal400,
                                          height: 27.v,
                                          width: 24.h,
                                          alignment: Alignment.topLeft,
                                          margin: EdgeInsets.only(
                                            left: 130.h,
                                            top: 56.v,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                CustomImageView(
                                  imagePath: ImageConstant.imgPolygon3,
                                  height: 98.v,
                                  width: 100.h,
                                  alignment: Alignment.topRight,
                                  margin: EdgeInsets.only(
                                    top: 24.v,
                                    right: 108.h,
                                  ),
                                ),
                                CustomImageView(
                                  imagePath: ImageConstant.imgPolygon4,
                                  height: 74.adaptSize,
                                  width: 74.adaptSize,
                                  alignment: Alignment.topLeft,
                                  margin: EdgeInsets.only(left: 112.h),
                                ),
                              ],
                            ),
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
      },
    );
  }

  /// Section Widget
  Widget _buildLoadingScreen(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 32.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgPolygon6,
            height: 46.v,
            width: 42.h,
            margin: EdgeInsets.only(top: 106.v),
          ),
          Spacer(
            flex: 40,
          ),
          CustomImageView(
            imagePath: ImageConstant.imgLocationTeal400,
            height: 31.v,
            width: 30.h,
            margin: EdgeInsets.only(
              top: 10.v,
              bottom: 109.v,
            ),
          ),
          Container(
            height: 90.v,
            width: 91.h,
            margin: EdgeInsets.only(
              left: 27.h,
              top: 59.v,
              bottom: 3.v,
            ),
            padding: EdgeInsets.symmetric(
              horizontal: 22.h,
              vertical: 27.v,
            ),
            decoration: AppDecoration.outlineGreenA.copyWith(
              borderRadius: BorderRadiusStyle.circleBorder45,
            ),
            child: CustomImageView(
              imagePath: ImageConstant.imgCheckmark,
              height: 33.v,
              width: 43.h,
              alignment: Alignment.center,
            ),
          ),
          Spacer(
            flex: 59,
          ),
          CustomImageView(
            imagePath: ImageConstant.imgArrowUp,
            height: 72.v,
            width: 81.h,
            margin: EdgeInsets.only(bottom: 80.v),
          ),
        ],
      ),
    );
  }
}
