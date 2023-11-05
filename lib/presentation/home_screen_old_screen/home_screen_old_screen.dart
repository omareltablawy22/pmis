import '../home_screen_old_screen/widgets/userprofilelist_item_widget.dart';
import 'bloc/home_screen_old_bloc.dart';
import 'models/home_screen_old_model.dart';
import 'models/userprofilelist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:pmis/core/app_export.dart';
import 'package:pmis/widgets/custom_elevated_button.dart';

class HomeScreenOldScreen extends StatelessWidget {
  const HomeScreenOldScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<HomeScreenOldBloc>(
      create: (context) => HomeScreenOldBloc(HomeScreenOldState(
        homeScreenOldModelObj: HomeScreenOldModel(),
      ))
        ..add(HomeScreenOldInitialEvent()),
      child: HomeScreenOldScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          height: 881.v,
          width: double.maxFinite,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Opacity(
                opacity: 0.248524,
                child: CustomImageView(
                  imagePath: ImageConstant.imgRectangle139,
                  height: 622.v,
                  width: 430.h,
                  alignment: Alignment.bottomCenter,
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 13.v),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: fs.Svg(
                        ImageConstant.imgGroup994,
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgMaskGroup2,
                        height: 50.v,
                        width: 430.h,
                      ),
                      SizedBox(height: 20.v),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.only(left: 42.h),
                          child: Text(
                            "lbl_hi_majed_sami".tr,
                            style: CustomTextStyles.headlineMediumTeal30004,
                          ),
                        ),
                      ),
                      SizedBox(height: 2.v),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.only(left: 42.h),
                          child: Text(
                            "lbl_vel_consequat".tr,
                            style: theme.textTheme.bodySmall,
                          ),
                        ),
                      ),
                      SizedBox(height: 51.v),
                      _buildUserProfileRow(context),
                      SizedBox(height: 31.v),
                      _buildUserProfileList(context),
                      SizedBox(height: 47.v),
                      CustomElevatedButton(
                        width: 164.h,
                        text: "lbl_click_here".tr.toUpperCase(),
                        buttonStyle: CustomButtonStyles.none,
                        decoration: CustomButtonStyles
                            .gradientGreenAToErrorContainerDecoration,
                        buttonTextStyle: CustomTextStyles.labelMediumOnPrimary,
                      ),
                      SizedBox(height: 31.v),
                      _buildFortyNineColumn(context),
                      SizedBox(height: 52.v),
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

  /// Section Widget
  Widget _buildUserProfileRow(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 32.h),
      padding: EdgeInsets.symmetric(vertical: 12.v),
      decoration: AppDecoration.outlineGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder26,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 64.v,
              bottom: 4.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "msg_quis_integer_vivamus".tr,
                  style: CustomTextStyles.labelLargeOnPrimary,
                ),
                SizedBox(height: 7.v),
                SizedBox(
                  width: 126.h,
                  child: Text(
                    "msg_phasellus_dignissim".tr,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    style: CustomTextStyles.bodySmallOnPrimary9.copyWith(
                      height: 1.22,
                    ),
                  ),
                ),
                SizedBox(height: 19.v),
                Text(
                  "lbl_1_8_m".tr,
                  style: CustomTextStyles.labelMediumOnPrimary_1,
                ),
                SizedBox(height: 3.v),
                Text(
                  "msg_purus_mollis_nunc".tr,
                  style: CustomTextStyles.labelMediumOnPrimary_1,
                ),
              ],
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgShutterstock1670207071,
            height: 177.v,
            width: 153.h,
            margin: EdgeInsets.only(top: 1.v),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildUserProfileList(BuildContext context) {
    return SizedBox(
      height: 204.v,
      child: BlocSelector<HomeScreenOldBloc, HomeScreenOldState,
          HomeScreenOldModel?>(
        selector: (state) => state.homeScreenOldModelObj,
        builder: (context, homeScreenOldModelObj) {
          return ListView.separated(
            padding: EdgeInsets.symmetric(horizontal: 32.h),
            scrollDirection: Axis.horizontal,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                width: 14.h,
              );
            },
            itemCount:
                homeScreenOldModelObj?.userprofilelistItemList.length ?? 0,
            itemBuilder: (context, index) {
              UserprofilelistItemModel model =
                  homeScreenOldModelObj?.userprofilelistItemList[index] ??
                      UserprofilelistItemModel();
              return UserprofilelistItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildFortyNineColumn(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 32.h),
      padding: EdgeInsets.symmetric(
        horizontal: 33.h,
        vertical: 6.v,
      ),
      decoration: AppDecoration.outlineIndigoA.copyWith(
        borderRadius: BorderRadiusStyle.customBorderTL30,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 1.v),
          CustomImageView(
            imagePath: ImageConstant.imgGroup48,
            height: 46.v,
            width: 299.h,
          ),
        ],
      ),
    );
  }
}
