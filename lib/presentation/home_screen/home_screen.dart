import 'bloc/home_bloc.dart';
import 'models/home_model.dart';
import 'package:flutter/material.dart';
import 'package:pmis/core/app_export.dart';
import 'package:pmis/widgets/custom_bottom_bar.dart';
import 'package:pmis/widgets/custom_outlined_button.dart';
import 'package:pmis/widgets/custom_radio_button.dart';

// ignore_for_file: must_be_immutable
class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<HomeBloc>(
        create: (context) => HomeBloc(HomeState(homeModelObj: HomeModel()))
          ..add(HomeInitialEvent()),
        child: HomeScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  _buildHomeScreenStack(context),
                  Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 32.h, vertical: 29.v),
                      decoration: AppDecoration.gradientBlueGrayToBlueGray,
                      child: Column(children: [
                        CustomOutlinedButton(
                            width: 243.h,
                            text: "lbl_search_here".tr,
                            buttonStyle:
                                CustomButtonStyles.outlineBlueGrayTL20),
                        SizedBox(height: 26.v),
                        _buildViverraTinciduntColumn(context),
                        SizedBox(height: 14.v),
                        _buildViverraTinciduntColumn1(context),
                        SizedBox(height: 76.v)
                      ]))
                ])),
            bottomNavigationBar: Padding(
                padding: EdgeInsets.symmetric(horizontal: 32.h),
                child: _buildBottomBar(context))));
  }

  /// Section Widget
  Widget _buildHomeScreenStack(BuildContext context) {
    return SizedBox(
        height: 259.v,
        width: double.maxFinite,
        child: Stack(alignment: Alignment.bottomRight, children: [
          Align(
              alignment: Alignment.center,
              child: Container(
                  padding: EdgeInsets.symmetric(vertical: 13.v),
                  decoration: AppDecoration.fillOnError.copyWith(
                      borderRadius: BorderRadiusStyle.customBorderBL30),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
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
                                  padding: EdgeInsets.only(
                                      left: 11.h, top: 20.v, bottom: 17.v),
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text("lbl_hi_majed_sami".tr,
                                            style:
                                                CustomTextStyles.titleMedium16),
                                        SizedBox(height: 3.v),
                                        Text("lbl_vel_consequat".tr,
                                            style: CustomTextStyles
                                                .helveticaNeueBluegray200Regular)
                                      ]))
                            ])),
                        SizedBox(height: 79.v)
                      ]))),
          Align(
              alignment: Alignment.bottomRight,
              child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  padding:
                      EdgeInsets.only(left: 40.h, top: 206.v, bottom: 24.v),
                  child: IntrinsicWidth(
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                        SizedBox(
                            height: 29.v,
                            width: 90.h,
                            child: Stack(
                                alignment: Alignment.topCenter,
                                children: [
                                  CustomImageView(
                                      imagePath: ImageConstant
                                          .imgRectangle623Teal30004,
                                      height: 29.v,
                                      width: 90.h,
                                      radius: BorderRadius.circular(14.h),
                                      alignment: Alignment.center),
                                  Align(
                                      alignment: Alignment.topCenter,
                                      child: Padding(
                                          padding: EdgeInsets.only(top: 6.v),
                                          child: Text(
                                              "lbl_agencies".tr.toUpperCase(),
                                              style: CustomTextStyles
                                                  .labelLargeOnError)))
                                ])),
                        GestureDetector(
                            onTap: () {
                              onTapTxtAdministrations(context);
                            },
                            child: Padding(
                                padding: EdgeInsets.only(
                                    left: 16.h, top: 6.v, bottom: 7.v),
                                child: Text(
                                    "lbl_administrations".tr.toUpperCase(),
                                    style: theme.textTheme.labelLarge))),
                        Padding(
                            padding: EdgeInsets.only(
                                left: 30.h, top: 6.v, bottom: 7.v),
                            child: Text("lbl_projects".tr.toUpperCase(),
                                style: theme.textTheme.labelLarge)),
                        Padding(
                            padding: EdgeInsets.only(
                                left: 29.h, top: 6.v, bottom: 7.v),
                            child: Text("lbl_project_details".tr.toUpperCase(),
                                style: theme.textTheme.labelLarge))
                      ]))))
        ]));
  }

  /// Section Widget
  Widget _buildViverraTinciduntColumn(BuildContext context) {
    return GestureDetector(
        onTap: () {
          onTapViverraTinciduntColumn(context);
        },
        child: Container(
            margin: EdgeInsets.only(left: 1.h),
            padding: EdgeInsets.symmetric(horizontal: 87.h, vertical: 13.v),
            decoration: AppDecoration.outlineBlack
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder26),
            child: Column(mainAxisSize: MainAxisSize.min, children: [
              Align(
                  alignment: Alignment.centerLeft,
                  child: Text("msg_est_lobortis_curabitur".tr,
                      style: theme.textTheme.titleMedium)),
              SizedBox(height: 5.v),
              Text("lbl_vel_consequat".tr,
                  style: CustomTextStyles.helveticaNeueBluegray200Regular),
              SizedBox(height: 20.v),
              _buildFourHundredForty(context,
                  userName: "lbl_440".tr,
                  userDescription: "lbl_vel_consequat".tr,
                  userImage: ImageConstant.imgThumbsUpOnprimary53x93),
              SizedBox(height: 25.v),
              BlocBuilder<HomeBloc, HomeState>(builder: (context, state) {
                return state.homeModelObj!.radioList.isNotEmpty
                    ? Row(children: [
                        CustomRadioButton(
                            text: "msg_230_viverra_tincidunt".tr,
                            value: state.homeModelObj?.radioList[0] ?? "",
                            groupValue: state.radioGroup,
                            onChange: (value) {
                              context
                                  .read<HomeBloc>()
                                  .add(ChangeRadioButtonEvent(value: value));
                            }),
                        Padding(
                            padding: EdgeInsets.only(left: 15.h),
                            child: CustomRadioButton(
                                text: "msg_360_viverra_tincidunt".tr,
                                value: state.homeModelObj?.radioList[1] ?? "",
                                groupValue: state.radioGroup,
                                onChange: (value) {
                                  context.read<HomeBloc>().add(
                                      ChangeRadioButtonEvent(value: value));
                                }))
                      ])
                    : Container();
              }),
              SizedBox(height: 9.v),
              BlocBuilder<HomeBloc, HomeState>(builder: (context, state) {
                return state.homeModelObj!.radioList1.isNotEmpty
                    ? Row(children: [
                        CustomRadioButton(
                            text: "msg_410_viverra_tincidunt".tr,
                            value: state.homeModelObj?.radioList1[0] ?? "",
                            groupValue: state.radioGroup1,
                            onChange: (value) {
                              context
                                  .read<HomeBloc>()
                                  .add(ChangeRadioButton1Event(value: value));
                            }),
                        Padding(
                            padding: EdgeInsets.only(left: 15.h),
                            child: CustomRadioButton(
                                text: "msg_120_viverra_tincidunt".tr,
                                value: state.homeModelObj?.radioList1[1] ?? "",
                                groupValue: state.radioGroup1,
                                onChange: (value) {
                                  context.read<HomeBloc>().add(
                                      ChangeRadioButton1Event(value: value));
                                }))
                      ])
                    : Container();
              })
            ])));
  }

  /// Section Widget
  Widget _buildViverraTinciduntColumn1(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 1.h),
        padding: EdgeInsets.symmetric(horizontal: 88.h, vertical: 13.v),
        decoration: AppDecoration.outlineBlack
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder26),
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                  padding: EdgeInsets.only(left: 5.h),
                  child: Text("msg_est_lobortis_curabitur".tr,
                      style: theme.textTheme.titleMedium))),
          SizedBox(height: 5.v),
          Text("lbl_vel_consequat".tr,
              style: CustomTextStyles.helveticaNeueBluegray200Regular),
          SizedBox(height: 20.v),
          _buildFourHundredForty(context,
              userName: "lbl_440".tr,
              userDescription: "lbl_vel_consequat".tr,
              userImage: ImageConstant.imgBag),
          SizedBox(height: 25.v),
          BlocBuilder<HomeBloc, HomeState>(builder: (context, state) {
            return state.homeModelObj!.radioList2.isNotEmpty
                ? Row(children: [
                    CustomRadioButton(
                        text: "msg_230_viverra_tincidunt".tr,
                        value: state.homeModelObj?.radioList2[0] ?? "",
                        groupValue: state.radioGroup2,
                        onChange: (value) {
                          context
                              .read<HomeBloc>()
                              .add(ChangeRadioButton2Event(value: value));
                        }),
                    Padding(
                        padding: EdgeInsets.only(left: 15.h),
                        child: CustomRadioButton(
                            text: "msg_360_viverra_tincidunt".tr,
                            value: state.homeModelObj?.radioList2[1] ?? "",
                            groupValue: state.radioGroup2,
                            onChange: (value) {
                              context
                                  .read<HomeBloc>()
                                  .add(ChangeRadioButton2Event(value: value));
                            }))
                  ])
                : Container();
          }),
          SizedBox(height: 9.v),
          BlocBuilder<HomeBloc, HomeState>(builder: (context, state) {
            return state.homeModelObj!.radioList3.isNotEmpty
                ? Row(children: [
                    CustomRadioButton(
                        text: "msg_410_viverra_tincidunt".tr,
                        value: state.homeModelObj?.radioList3[0] ?? "",
                        groupValue: state.radioGroup3,
                        onChange: (value) {
                          context
                              .read<HomeBloc>()
                              .add(ChangeRadioButton3Event(value: value));
                        }),
                    Padding(
                        padding: EdgeInsets.only(left: 15.h),
                        child: CustomRadioButton(
                            text: "msg_120_viverra_tincidunt".tr,
                            value: state.homeModelObj?.radioList3[1] ?? "",
                            groupValue: state.radioGroup3,
                            onChange: (value) {
                              context
                                  .read<HomeBloc>()
                                  .add(ChangeRadioButton3Event(value: value));
                            }))
                  ])
                : Container();
          })
        ]));
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {});
  }

  /// Common widget
  Widget _buildFourHundredForty(
    BuildContext context, {
    required String userName,
    required String userDescription,
    required String userImage,
  }) {
    return SizedBox(
        height: 53.v,
        width: 115.h,
        child: Stack(alignment: Alignment.centerLeft, children: [
          Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                  padding: EdgeInsets.only(bottom: 6.v),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(userName,
                            style: theme.textTheme.titleMedium!
                                .copyWith(color: appTheme.teal30004)),
                        SizedBox(height: 5.v),
                        Text(userDescription,
                            style: CustomTextStyles
                                .helveticaNeueBluegray200Regular
                                .copyWith(color: appTheme.blueGray200))
                      ]))),
          CustomImageView(
              imagePath: userImage,
              height: 53.v,
              width: 93.h,
              alignment: Alignment.centerLeft)
        ]));
  }

  /// Navigates to the departmentsScreen when the action is triggered.
  onTapTxtAdministrations(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.departmentsScreen,
    );
  }

  /// Navigates to the subAgenciesScreen when the action is triggered.
  onTapViverraTinciduntColumn(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.subAgenciesScreen,
    );
  }
}
