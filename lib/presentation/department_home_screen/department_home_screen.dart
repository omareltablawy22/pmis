import '../department_home_screen/widgets/userprofileview_item_widget.dart';
import 'bloc/department_home_bloc.dart';
import 'models/department_home_model.dart';
import 'models/userprofileview_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:pmis/core/app_export.dart';
import 'package:pmis/widgets/custom_icon_button.dart';
import 'package:pmis/widgets/custom_outlined_button.dart';

class DepartmentHomeScreen extends StatelessWidget {
  const DepartmentHomeScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<DepartmentHomeBloc>(
        create: (context) => DepartmentHomeBloc(
            DepartmentHomeState(departmentHomeModelObj: DepartmentHomeModel()))
          ..add(DepartmentHomeInitialEvent()),
        child: DepartmentHomeScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: SingleChildScrollView(
                    child: Column(children: [
                  _buildHomeScreen(context),
                  Container(
                      width: double.maxFinite,
                      padding: EdgeInsets.symmetric(vertical: 29.v),
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(ImageConstant.imgRectangle139),
                              fit: BoxFit.cover)),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                                padding: EdgeInsets.only(bottom: 524.v),
                                child: CustomIconButton(
                                    height: 40.v,
                                    width: 41.h,
                                    padding: EdgeInsets.all(13.h),
                                    onTap: () {
                                      onTapBtnArrowLeft(context);
                                    },
                                    child: CustomImageView(
                                        imagePath:
                                            ImageConstant.imgArrowLeft))),
                            CustomOutlinedButton(
                                width: 287.h,
                                text: "lbl_search_here".tr,
                                margin: EdgeInsets.only(bottom: 524.v))
                          ])),
                  _buildUserProfileView(context)
                ])))));
  }

  /// Section Widget
  Widget _buildHomeScreen(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(vertical: 13.v),
        decoration: BoxDecoration(
            image: DecorationImage(
                image: fs.Svg(ImageConstant.imgGroup800), fit: BoxFit.cover)),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          CustomImageView(
              imagePath: ImageConstant.imgMaskGroup2,
              height: 50.v,
              width: 430.h),
          SizedBox(height: 33.v),
          Padding(
              padding: EdgeInsets.only(left: 40.h),
              child: Row(children: [
                CustomImageView(
                    imagePath: ImageConstant.imgEllipse25,
                    height: 70.adaptSize,
                    width: 70.adaptSize),
                Padding(
                    padding:
                        EdgeInsets.only(left: 11.h, top: 20.v, bottom: 17.v),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("lbl_hi_majed_sami".tr,
                              style: CustomTextStyles.titleMedium16),
                          SizedBox(height: 3.v),
                          Text("lbl_vel_consequat".tr,
                              style: CustomTextStyles
                                  .helveticaNeueBluegray200Regular)
                        ]))
              ])),
          SizedBox(height: 39.v),
          Align(
              alignment: Alignment.centerRight,
              child: Padding(
                  padding: EdgeInsets.only(left: 54.h, right: 33.h),
                  child:
                      Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                    GestureDetector(
                        onTap: () {
                          onTapTxtAgencies(context);
                        },
                        child: Padding(
                            padding: EdgeInsets.only(top: 7.v, bottom: 6.v),
                            child: Text("lbl_agencies".tr.toUpperCase(),
                                style: theme.textTheme.labelLarge))),
                    Container(
                        height: 29.v,
                        width: 127.h,
                        margin: EdgeInsets.only(left: 21.h),
                        child: Stack(alignment: Alignment.center, children: [
                          CustomImageView(
                              imagePath: ImageConstant.imgRectangle623,
                              height: 29.v,
                              width: 127.h,
                              radius: BorderRadius.circular(14.h),
                              alignment: Alignment.center),
                          Align(
                              alignment: Alignment.center,
                              child: Text(
                                  "lbl_administrations".tr.toUpperCase(),
                                  style: CustomTextStyles.labelLargeOnError))
                        ])),
                    Padding(
                        padding:
                            EdgeInsets.only(left: 23.h, top: 7.v, bottom: 6.v),
                        child: Text("lbl_projects".tr.toUpperCase(),
                            style: theme.textTheme.labelLarge)),
                    Padding(
                        padding:
                            EdgeInsets.only(left: 29.h, top: 7.v, bottom: 6.v),
                        child: Text("lbl_project_details".tr.toUpperCase(),
                            style: theme.textTheme.labelLarge))
                  ]))),
          SizedBox(height: 11.v)
        ]));
  }

  /// Section Widget
  Widget _buildUserProfileView(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 32.h),
        child: BlocSelector<DepartmentHomeBloc, DepartmentHomeState,
                DepartmentHomeModel?>(
            selector: (state) => state.departmentHomeModelObj,
            builder: (context, departmentHomeModelObj) {
              return ListView.separated(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  separatorBuilder: (context, index) {
                    return SizedBox(height: 11.v);
                  },
                  itemCount:
                      departmentHomeModelObj?.userprofileviewItemList.length ??
                          0,
                  itemBuilder: (context, index) {
                    UserprofileviewItemModel model = departmentHomeModelObj
                            ?.userprofileviewItemList[index] ??
                        UserprofileviewItemModel();
                    return UserprofileviewItemWidget(model, onTapWidget: () {
                      onTapWidget(context);
                    });
                  });
            }));
  }

  /// Navigates to the prjectHomeScreen when the action is triggered.
  onTapWidget(BuildContext context) {
    NavigatorService.pushNamed(AppRoutes.prjectHomeScreen);
  }

  /// Navigates to the homeScreen when the action is triggered.
  onTapTxtAgencies(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.homeScreen,
    );
  }

  /// Navigates to the departmentsScreen when the action is triggered.
  onTapBtnArrowLeft(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.departmentsScreen,
    );
  }
}
