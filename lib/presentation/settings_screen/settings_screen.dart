import 'bloc/settings_bloc.dart';
import 'models/settings_model.dart';
import 'package:flutter/material.dart';
import 'package:pmis/core/app_export.dart';
import 'package:pmis/widgets/custom_bottom_bar.dart';

class SettingsScreen extends StatelessWidget {
  SettingsScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<SettingsBloc>(
      create: (context) => SettingsBloc(SettingsState(
        settingsModelObj: SettingsModel(),
      ))
        ..add(SettingsInitialEvent()),
      child: SettingsScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<SettingsBloc, SettingsState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: SizedBox(
              width: double.maxFinite,
              child: Column(
                children: [
                  SizedBox(height: 13.v),
                  CustomImageView(
                    imagePath: ImageConstant.imgMaskGroup2,
                    height: 50.v,
                    width: 430.h,
                  ),
                  SizedBox(height: 11.v),
                  CustomImageView(
                    imagePath: ImageConstant.imgEllipse25,
                    height: 70.adaptSize,
                    width: 70.adaptSize,
                  ),
                  SizedBox(height: 17.v),
                  Text(
                    "lbl_hi_majed_sami".tr,
                    style: CustomTextStyles.titleMedium16,
                  ),
                  SizedBox(height: 1.v),
                  Text(
                    "lbl_11_21_2024".tr,
                    style: CustomTextStyles.bodySmall11,
                  ),
                  SizedBox(height: 61.v),
                  Container(
                    width: double.maxFinite,
                    padding: EdgeInsets.symmetric(
                      horizontal: 50.h,
                      vertical: 61.v,
                    ),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          ImageConstant.imgRectangle139,
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 1.h),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imageNotFound,
                                height: 25.v,
                                width: 20.h,
                                margin: EdgeInsets.only(bottom: 2.v),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 20.h,
                                  top: 6.v,
                                ),
                                child: Text(
                                  "lbl_dapibus_integer".tr,
                                  style: CustomTextStyles.titleMediumPrimary,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 41.v),
                        Padding(
                          padding: EdgeInsets.only(left: 1.h),
                          child: Row(
                            children: [
                              CustomImageView(
                                height: 20.v,
                                width: 25.h,
                                margin: EdgeInsets.only(bottom: 1.v),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 17.h),
                                child: Text(
                                  "lbl_cras_ligula".tr,
                                  style: CustomTextStyles.titleMediumPrimary,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 42.v),
                        Padding(
                          padding: EdgeInsets.only(right: 92.h),
                          child: Row(
                            children: [
                              CustomImageView(
                                height: 23.v,
                                width: 27.h,
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 16.h),
                                child: Text(
                                  "msg_mollis_efficitur".tr,
                                  style: CustomTextStyles.titleMediumPrimary,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 41.v),
                        Padding(
                          padding: EdgeInsets.only(left: 1.h),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomImageView(
                                height: 24.v,
                                width: 25.h,
                                margin: EdgeInsets.only(top: 2.v),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 16.h,
                                  bottom: 5.v,
                                ),
                                child: Text(
                                  "lbl_auctor_non".tr,
                                  style: CustomTextStyles.titleMediumPrimary,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 38.v),
                        Padding(
                          padding: EdgeInsets.only(left: 1.h),
                          child: Row(
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgGroup2855,
                                height: 24.v,
                                width: 25.h,
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 17.h),
                                child: Text(
                                  "lbl_lorem_morbi".tr,
                                  style: CustomTextStyles.titleMediumPrimary,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 38.v),
                        Row(
                          children: [
                            CustomImageView(
                              height: 26.v,
                              width: 27.h,
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 16.h,
                                top: 3.v,
                              ),
                              child: Text(
                                "lbl_lorem_maecenas".tr,
                                style: CustomTextStyles.titleMediumPrimary,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 38.v),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            bottomNavigationBar: Padding(
              padding: EdgeInsets.symmetric(horizontal: 32.h),
              child: _buildBottomBar(context),
            ),
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {},
    );
  }
}
