import 'bloc/administrators_bloc.dart';
import 'models/administrators_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:pmis/core/app_export.dart';
import 'package:pmis/widgets/custom_icon_button.dart';
import 'package:pmis/widgets/custom_radio_button.dart';
import 'package:pmis/widgets/custom_search_view.dart';

class AdministratorsScreen extends StatelessWidget {
  const AdministratorsScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<AdministratorsBloc>(
        create: (context) => AdministratorsBloc(
            AdministratorsState(administratorsModelObj: AdministratorsModel()))
          ..add(AdministratorsInitialEvent()),
        child: AdministratorsScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  _buildPath(context),
                  Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 32.h, vertical: 29.v),
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(ImageConstant.imgRectangle139),
                              fit: BoxFit.cover)),
                      child: Column(children: [
                        _buildArrowLeft(context),
                        SizedBox(height: 15.v),
                        _buildViverraTincidunt(context),
                        SizedBox(height: 35.v),
                        _buildHome(context),
                        SizedBox(height: 38.v)
                      ]))
                ]))));
  }

  /// Section Widget
  Widget _buildPath(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 33.h, vertical: 24.v),
        decoration: BoxDecoration(
            image: DecorationImage(
                image: fs.Svg(ImageConstant.imgGroup800), fit: BoxFit.cover)),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 4.v),
              CustomImageView(
                  imagePath: ImageConstant.imgPath2362,
                  height: 26.adaptSize,
                  width: 26.adaptSize,
                  alignment: Alignment.centerRight),
              SizedBox(height: 40.v),
              Padding(
                  padding: EdgeInsets.only(left: 6.h),
                  child: Row(children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgEllipse25,
                        height: 70.adaptSize,
                        width: 70.adaptSize),
                    Padding(
                        padding: EdgeInsets.only(
                            left: 11.h, top: 20.v, bottom: 17.v),
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
              SizedBox(height: 40.v),
              Padding(
                  padding: EdgeInsets.only(left: 6.h),
                  child: Row(
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
                                          .imgRectangle623Teal3000429x127,
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
                      ]))
            ]));
  }

  /// Section Widget
  Widget _buildArrowLeft(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      CustomIconButton(
          height: 40.v,
          width: 41.h,
          padding: EdgeInsets.all(13.h),
          onTap: () {
            onTapBtnArrowLeft(context);
          },
          child: CustomImageView(imagePath: ImageConstant.imgArrowLeft)),
      Expanded(
          child: Padding(
              padding: EdgeInsets.only(left: 37.h),
              child: BlocSelector<AdministratorsBloc, AdministratorsState,
                      TextEditingController?>(
                  selector: (state) => state.searchController,
                  builder: (context, searchController) {
                    return CustomSearchView(
                        controller: searchController,
                        hintText: "lbl_search_here".tr);
                  })))
    ]);
  }

  /// Section Widget
  Widget _buildViverraTincidunt(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 11.h, vertical: 14.v),
        decoration: AppDecoration.outlineBlack
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder26),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomImageView(
                  imagePath: ImageConstant.imgRectangle1425187x138,
                  height: 111.v,
                  width: 339.h),
              SizedBox(height: 10.v),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                      padding: EdgeInsets.only(left: 6.h),
                      child: Text("msg_est_lobortis_curabitur".tr,
                          style: theme.textTheme.titleMedium))),
              SizedBox(height: 5.v),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                      padding: EdgeInsets.only(left: 6.h),
                      child: Text("lbl_vel_consequat".tr,
                          style: CustomTextStyles
                              .helveticaNeueBluegray200Regular))),
              SizedBox(height: 2.v),
              Container(
                  width: 331.h,
                  margin: EdgeInsets.only(left: 6.h, right: 5.h),
                  child: Text("msg_duis_porta_ligula".tr,
                      maxLines: 8,
                      overflow: TextOverflow.ellipsis,
                      style:
                          theme.textTheme.bodySmall!.copyWith(height: 1.17))),
              SizedBox(height: 17.v),
              Padding(
                  padding: EdgeInsets.only(left: 6.h),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                            height: 53.v,
                            width: 115.h,
                            child: Stack(
                                alignment: Alignment.centerLeft,
                                children: [
                                  Align(
                                      alignment: Alignment.bottomRight,
                                      child: Padding(
                                          padding: EdgeInsets.only(bottom: 7.v),
                                          child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text("lbl_440".tr,
                                                    style: theme
                                                        .textTheme.titleMedium),
                                                SizedBox(height: 5.v),
                                                Text("lbl_vel_consequat".tr,
                                                    style: CustomTextStyles
                                                        .helveticaNeueBluegray200Regular)
                                              ]))),
                                  CustomImageView(
                                      imagePath: ImageConstant.imgThumbsUp,
                                      height: 53.v,
                                      width: 93.h,
                                      alignment: Alignment.centerLeft)
                                ])),
                        Padding(
                            padding: EdgeInsets.only(top: 10.v),
                            child: Column(children: [
                              BlocBuilder<AdministratorsBloc,
                                      AdministratorsState>(
                                  builder: (context, state) {
                                return state.administratorsModelObj!.radioList
                                        .isNotEmpty
                                    ? Row(children: [
                                        CustomRadioButton(
                                            text:
                                                "msg_230_viverra_tincidunt".tr,
                                            value: state.administratorsModelObj
                                                    ?.radioList[0] ??
                                                "",
                                            groupValue: state.numberValue,
                                            onChange: (value) {
                                              context
                                                  .read<AdministratorsBloc>()
                                                  .add(ChangeRadioButtonEvent(
                                                      value: value));
                                            }),
                                        Padding(
                                            padding:
                                                EdgeInsets.only(left: 15.h),
                                            child: CustomRadioButton(
                                                text:
                                                    "msg_360_viverra_tincidunt"
                                                        .tr,
                                                value: state
                                                        .administratorsModelObj
                                                        ?.radioList[1] ??
                                                    "",
                                                groupValue: state.numberValue,
                                                onChange: (value) {
                                                  context
                                                      .read<
                                                          AdministratorsBloc>()
                                                      .add(
                                                          ChangeRadioButtonEvent(
                                                              value: value));
                                                }))
                                      ])
                                    : Container();
                              }),
                              SizedBox(height: 9.v),
                              BlocBuilder<AdministratorsBloc,
                                      AdministratorsState>(
                                  builder: (context, state) {
                                return state.administratorsModelObj!.radioList1
                                        .isNotEmpty
                                    ? Row(children: [
                                        CustomRadioButton(
                                            text:
                                                "msg_410_viverra_tincidunt".tr,
                                            value: state.administratorsModelObj
                                                    ?.radioList1[0] ??
                                                "",
                                            groupValue: state.englishText,
                                            onChange: (value) {
                                              context
                                                  .read<AdministratorsBloc>()
                                                  .add(ChangeRadioButton1Event(
                                                      value: value));
                                            }),
                                        Padding(
                                            padding:
                                                EdgeInsets.only(left: 15.h),
                                            child: CustomRadioButton(
                                                text:
                                                    "msg_120_viverra_tincidunt"
                                                        .tr,
                                                value: state
                                                        .administratorsModelObj
                                                        ?.radioList1[1] ??
                                                    "",
                                                groupValue: state.englishText,
                                                onChange: (value) {
                                                  context
                                                      .read<
                                                          AdministratorsBloc>()
                                                      .add(
                                                          ChangeRadioButton1Event(
                                                              value: value));
                                                }))
                                      ])
                                    : Container();
                              })
                            ]))
                      ])),
              SizedBox(height: 4.v)
            ]));
  }

  /// Section Widget
  Widget _buildHome(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 18.h, vertical: 6.v),
        decoration: AppDecoration.outlineIndigoA
            .copyWith(borderRadius: BorderRadiusStyle.customBorderTL30),
        child: Row(children: [
          Padding(
              padding: EdgeInsets.only(bottom: 1.v),
              child: CustomIconButton(
                  height: 46.adaptSize,
                  width: 46.adaptSize,
                  padding: EdgeInsets.all(14.h),
                  decoration: IconButtonStyleHelper.outlineTealC,
                  child: CustomImageView(imagePath: ImageConstant.imgHome))),
          CustomImageView(
              imagePath: ImageConstant.imgUserBlueGray200,
              height: 15.adaptSize,
              width: 15.adaptSize,
              margin: EdgeInsets.only(left: 40.h, top: 15.v, bottom: 15.v))
        ]));
  }

  /// Navigates to the departmentsScreen when the action is triggered.
  onTapTxtAdministrations(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.departmentsScreen,
    );
  }

  /// Navigates to the subAgenciesScreen when the action is triggered.
  onTapBtnArrowLeft(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.subAgenciesScreen,
    );
  }
}
