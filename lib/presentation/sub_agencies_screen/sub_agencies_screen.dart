import 'bloc/sub_agencies_bloc.dart';
import 'models/sub_agencies_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:pmis/core/app_export.dart';
import 'package:pmis/widgets/custom_icon_button.dart';
import 'package:pmis/widgets/custom_radio_button.dart';
import 'package:pmis/widgets/custom_search_view.dart';

class SubAgenciesScreen extends StatelessWidget {
  const SubAgenciesScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<SubAgenciesBloc>(
        create: (context) => SubAgenciesBloc(
            SubAgenciesState(subAgenciesModelObj: SubAgenciesModel()))
          ..add(SubAgenciesInitialEvent()),
        child: SubAgenciesScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                width: double.maxFinite,
                child: SingleChildScrollView(
                    child: Column(children: [
                  _buildPlaylist(context),
                  SizedBox(
                      height: 734.v,
                      width: double.maxFinite,
                      child:
                          Stack(alignment: Alignment.bottomCenter, children: [
                        Align(
                            alignment: Alignment.topCenter,
                            child: Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 32.h, vertical: 29.v),
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            ImageConstant.imgRectangle139),
                                        fit: BoxFit.cover)),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      _buildClientTestimonials(context),
                                      SizedBox(height: 26.v),
                                      _buildReviews(context),
                                      SizedBox(height: 14.v),
                                      _buildRecentOrders(context),
                                      SizedBox(height: 76.v)
                                    ]))),
                        _buildUserProfile(context),
                        _buildHome(context)
                      ]))
                ])))));
  }

  /// Section Widget
  Widget _buildPlaylist(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(vertical: 13.v),
        decoration: BoxDecoration(
            image: DecorationImage(
                image: fs.Svg(ImageConstant.imgGroup800), fit: BoxFit.cover)),
        child: Column(children: [
          CustomImageView(
              imagePath: ImageConstant.imgMaskGroup2,
              height: 50.v,
              width: 430.h),
          SizedBox(height: 33.v),
          Align(
              alignment: Alignment.centerLeft,
              child: Padding(
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
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("lbl_hi_majed_sami".tr,
                                  style: CustomTextStyles.titleMedium16),
                              SizedBox(height: 3.v),
                              Text("lbl_vel_consequat".tr,
                                  style: CustomTextStyles
                                      .helveticaNeueBluegray200Regular)
                            ]))
                  ]))),
          SizedBox(height: 39.v),
          Padding(
              padding: EdgeInsets.only(left: 40.h, right: 33.h),
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                SizedBox(
                    height: 29.v,
                    width: 90.h,
                    child: Stack(alignment: Alignment.center, children: [
                      CustomImageView(
                          imagePath:
                              ImageConstant.imgRectangle623Teal3000429x127,
                          height: 29.v,
                          width: 90.h,
                          radius: BorderRadius.circular(14.h),
                          alignment: Alignment.center),
                      Align(
                          alignment: Alignment.center,
                          child: Text("lbl_agencies".tr.toUpperCase(),
                              style: CustomTextStyles.labelLargeOnError))
                    ])),
                GestureDetector(
                    onTap: () {
                      onTapTxtAdministrations(context);
                    },
                    child: Padding(
                        padding:
                            EdgeInsets.only(left: 16.h, top: 7.v, bottom: 6.v),
                        child: Text("lbl_administrations".tr.toUpperCase(),
                            style: theme.textTheme.labelLarge))),
                Padding(
                    padding: EdgeInsets.only(left: 30.h, top: 7.v, bottom: 6.v),
                    child: Text("lbl_projects".tr.toUpperCase(),
                        style: theme.textTheme.labelLarge)),
                Padding(
                    padding: EdgeInsets.only(left: 29.h, top: 7.v, bottom: 6.v),
                    child: Text("lbl_project_details".tr.toUpperCase(),
                        style: theme.textTheme.labelLarge))
              ])),
          SizedBox(height: 11.v)
        ]));
  }

  /// Section Widget
  Widget _buildClientTestimonials(BuildContext context) {
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
              child: BlocSelector<SubAgenciesBloc, SubAgenciesState,
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
  Widget _buildReviews(BuildContext context) {
    return GestureDetector(
        onTap: () {
          onTapReviews(context);
        },
        child: Container(
            margin: EdgeInsets.only(left: 1.h),
            padding: EdgeInsets.symmetric(vertical: 8.v),
            decoration: AppDecoration.outlineBlack
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder26),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                      padding: EdgeInsets.symmetric(vertical: 5.v),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                                padding: EdgeInsets.only(left: 1.h),
                                child: Text("msg_est_lobortis_curabitur".tr,
                                    style: theme.textTheme.titleMedium)),
                            SizedBox(height: 5.v),
                            Padding(
                                padding: EdgeInsets.only(left: 1.h),
                                child: Text("lbl_vel_consequat".tr,
                                    style: CustomTextStyles
                                        .helveticaNeueBluegray200Regular)),
                            SizedBox(height: 20.v),
                            _buildFourHundredForty(context,
                                userName: "lbl_440".tr,
                                userDescription: "lbl_vel_consequat".tr,
                                userImage: ImageConstant.imgThumbsUpOnprimary),
                            SizedBox(height: 25.v),
                            Padding(
                                padding: EdgeInsets.only(left: 1.h),
                                child: BlocBuilder<SubAgenciesBloc,
                                        SubAgenciesState>(
                                    builder: (context, state) {
                                  return state.subAgenciesModelObj!.radioList
                                          .isNotEmpty
                                      ? Row(children: [
                                          CustomRadioButton(
                                              text: "msg_230_viverra_tincidunt"
                                                  .tr,
                                              value: state.subAgenciesModelObj
                                                      ?.radioList[0] ??
                                                  "",
                                              groupValue: state.radioGroup,
                                              onChange: (value) {
                                                context
                                                    .read<SubAgenciesBloc>()
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
                                                          .subAgenciesModelObj
                                                          ?.radioList[1] ??
                                                      "",
                                                  groupValue: state.radioGroup,
                                                  onChange: (value) {
                                                    context
                                                        .read<SubAgenciesBloc>()
                                                        .add(
                                                            ChangeRadioButtonEvent(
                                                                value: value));
                                                  }))
                                        ])
                                      : Container();
                                })),
                            SizedBox(height: 9.v),
                            Padding(
                                padding: EdgeInsets.only(left: 1.h),
                                child: BlocBuilder<SubAgenciesBloc,
                                        SubAgenciesState>(
                                    builder: (context, state) {
                                  return state.subAgenciesModelObj!.radioList1
                                          .isNotEmpty
                                      ? Row(children: [
                                          CustomRadioButton(
                                              text: "msg_410_viverra_tincidunt"
                                                  .tr,
                                              value: state.subAgenciesModelObj
                                                      ?.radioList1[0] ??
                                                  "",
                                              groupValue: state.radioGroup1,
                                              onChange: (value) {
                                                context
                                                    .read<SubAgenciesBloc>()
                                                    .add(
                                                        ChangeRadioButton1Event(
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
                                                          .subAgenciesModelObj
                                                          ?.radioList1[1] ??
                                                      "",
                                                  groupValue: state.radioGroup1,
                                                  onChange: (value) {
                                                    context
                                                        .read<SubAgenciesBloc>()
                                                        .add(
                                                            ChangeRadioButton1Event(
                                                                value: value));
                                                  }))
                                        ])
                                      : Container();
                                }))
                          ])),
                  CustomImageView(
                      imagePath: ImageConstant.imgRectangle1425187x138,
                      height: 187.v,
                      width: 138.h,
                      margin: EdgeInsets.only(top: 1.v))
                ])));
  }

  /// Section Widget
  Widget _buildRecentOrders(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 1.h),
        padding: EdgeInsets.symmetric(vertical: 8.v),
        decoration: AppDecoration.outlineBlack
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder26),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          Padding(
              padding: EdgeInsets.symmetric(vertical: 5.v),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                        padding: EdgeInsets.only(left: 1.h),
                        child: Text("msg_est_lobortis_curabitur".tr,
                            style: theme.textTheme.titleMedium)),
                    SizedBox(height: 5.v),
                    Padding(
                        padding: EdgeInsets.only(left: 1.h),
                        child: Text("lbl_vel_consequat".tr,
                            style: CustomTextStyles
                                .helveticaNeueBluegray200Regular)),
                    SizedBox(height: 20.v),
                    _buildFourHundredForty(context,
                        userName: "lbl_440".tr,
                        userDescription: "lbl_vel_consequat".tr,
                        userImage: ImageConstant.imgThumbsUp),
                    SizedBox(height: 25.v),
                    Padding(
                        padding: EdgeInsets.only(left: 1.h),
                        child: BlocBuilder<SubAgenciesBloc, SubAgenciesState>(
                            builder: (context, state) {
                          return state
                                  .subAgenciesModelObj!.radioList2.isNotEmpty
                              ? Row(children: [
                                  CustomRadioButton(
                                      text: "msg_230_viverra_tincidunt".tr,
                                      value: state.subAgenciesModelObj
                                              ?.radioList2[0] ??
                                          "",
                                      groupValue: state.radioGroup2,
                                      onChange: (value) {
                                        context.read<SubAgenciesBloc>().add(
                                            ChangeRadioButton2Event(
                                                value: value));
                                      }),
                                  Padding(
                                      padding: EdgeInsets.only(left: 15.h),
                                      child: CustomRadioButton(
                                          text: "msg_360_viverra_tincidunt".tr,
                                          value: state.subAgenciesModelObj
                                                  ?.radioList2[1] ??
                                              "",
                                          groupValue: state.radioGroup2,
                                          onChange: (value) {
                                            context.read<SubAgenciesBloc>().add(
                                                ChangeRadioButton2Event(
                                                    value: value));
                                          }))
                                ])
                              : Container();
                        })),
                    SizedBox(height: 9.v),
                    Padding(
                        padding: EdgeInsets.only(left: 1.h),
                        child: BlocBuilder<SubAgenciesBloc, SubAgenciesState>(
                            builder: (context, state) {
                          return state
                                  .subAgenciesModelObj!.radioList3.isNotEmpty
                              ? Row(children: [
                                  CustomRadioButton(
                                      text: "msg_410_viverra_tincidunt".tr,
                                      value: state.subAgenciesModelObj
                                              ?.radioList3[0] ??
                                          "",
                                      groupValue: state.radioGroup3,
                                      onChange: (value) {
                                        context.read<SubAgenciesBloc>().add(
                                            ChangeRadioButton3Event(
                                                value: value));
                                      }),
                                  Padding(
                                      padding: EdgeInsets.only(left: 15.h),
                                      child: CustomRadioButton(
                                          text: "msg_120_viverra_tincidunt".tr,
                                          value: state.subAgenciesModelObj
                                                  ?.radioList3[1] ??
                                              "",
                                          groupValue: state.radioGroup3,
                                          onChange: (value) {
                                            context.read<SubAgenciesBloc>().add(
                                                ChangeRadioButton3Event(
                                                    value: value));
                                          }))
                                ])
                              : Container();
                        }))
                  ])),
          CustomImageView(
              imagePath: ImageConstant.imgRectangle14251,
              height: 187.v,
              width: 138.h,
              margin: EdgeInsets.only(top: 1.v))
        ]));
  }

  /// Section Widget
  Widget _buildUserProfile(BuildContext context) {
    return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
            margin: EdgeInsets.only(left: 32.h, top: 530.v, right: 32.h),
            padding: EdgeInsets.symmetric(horizontal: 9.h, vertical: 8.v),
            decoration: AppDecoration.outlineBlack
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder26),
            child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
              Padding(
                  padding: EdgeInsets.symmetric(vertical: 5.v),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                            padding: EdgeInsets.only(left: 1.h),
                            child: Text("msg_est_lobortis_curabitur".tr,
                                style: theme.textTheme.titleMedium)),
                        SizedBox(height: 5.v),
                        Padding(
                            padding: EdgeInsets.only(left: 1.h),
                            child: Text("lbl_vel_consequat".tr,
                                style: CustomTextStyles
                                    .helveticaNeueBluegray200Regular)),
                        SizedBox(height: 20.v),
                        SizedBox(
                            height: 53.v,
                            width: 115.h,
                            child: Stack(
                                alignment: Alignment.centerLeft,
                                children: [
                                  Align(
                                      alignment: Alignment.centerRight,
                                      child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text("lbl_440".tr,
                                                style: theme
                                                    .textTheme.titleMedium),
                                            SizedBox(height: 7.v),
                                            Text("lbl_vel_consequat".tr,
                                                style: CustomTextStyles
                                                    .helveticaNeueBluegray200Regular)
                                          ])),
                                  CustomImageView(
                                      imagePath: ImageConstant.imgThumbsUp,
                                      height: 53.v,
                                      width: 93.h,
                                      alignment: Alignment.centerLeft)
                                ])),
                        SizedBox(height: 27.v),
                        Padding(
                            padding: EdgeInsets.only(left: 1.h),
                            child:
                                BlocBuilder<SubAgenciesBloc, SubAgenciesState>(
                                    builder: (context, state) {
                              return state.subAgenciesModelObj!.radioList4
                                      .isNotEmpty
                                  ? Row(children: [
                                      CustomRadioButton(
                                          text: "msg_230_viverra_tincidunt".tr,
                                          value: state.subAgenciesModelObj
                                                  ?.radioList4[0] ??
                                              "",
                                          groupValue: state.radioGroup4,
                                          onChange: (value) {
                                            context.read<SubAgenciesBloc>().add(
                                                ChangeRadioButton4Event(
                                                    value: value));
                                          }),
                                      Padding(
                                          padding: EdgeInsets.only(left: 15.h),
                                          child: CustomRadioButton(
                                              text: "msg_360_viverra_tincidunt"
                                                  .tr,
                                              value: state.subAgenciesModelObj
                                                      ?.radioList4[1] ??
                                                  "",
                                              groupValue: state.radioGroup4,
                                              onChange: (value) {
                                                context
                                                    .read<SubAgenciesBloc>()
                                                    .add(
                                                        ChangeRadioButton4Event(
                                                            value: value));
                                              }))
                                    ])
                                  : Container();
                            })),
                        SizedBox(height: 12.v),
                        Padding(
                            padding: EdgeInsets.only(left: 1.h),
                            child:
                                BlocBuilder<SubAgenciesBloc, SubAgenciesState>(
                                    builder: (context, state) {
                              return state.subAgenciesModelObj!.radioList5
                                      .isNotEmpty
                                  ? Row(children: [
                                      CustomRadioButton(
                                          text: "msg_410_viverra_tincidunt".tr,
                                          value: state.subAgenciesModelObj
                                                  ?.radioList5[0] ??
                                              "",
                                          groupValue: state.radioGroup5,
                                          onChange: (value) {
                                            context.read<SubAgenciesBloc>().add(
                                                ChangeRadioButton5Event(
                                                    value: value));
                                          }),
                                      Padding(
                                          padding: EdgeInsets.only(left: 15.h),
                                          child: CustomRadioButton(
                                              text: "msg_120_viverra_tincidunt"
                                                  .tr,
                                              value: state.subAgenciesModelObj
                                                      ?.radioList5[1] ??
                                                  "",
                                              groupValue: state.radioGroup5,
                                              onChange: (value) {
                                                context
                                                    .read<SubAgenciesBloc>()
                                                    .add(
                                                        ChangeRadioButton5Event(
                                                            value: value));
                                              }))
                                    ])
                                  : Container();
                            }))
                      ])),
              CustomImageView(
                  imagePath: ImageConstant.imgRectangle14252,
                  height: 187.v,
                  width: 138.h,
                  margin: EdgeInsets.only(left: 13.h, top: 1.v))
            ])));
  }

  /// Section Widget
  Widget _buildHome(BuildContext context) {
    return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
            margin: EdgeInsets.fromLTRB(32.h, 496.v, 32.h, 179.v),
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
                      child:
                          CustomImageView(imagePath: ImageConstant.imgHome))),
              CustomImageView(
                  imagePath: ImageConstant.imgUserBlueGray200,
                  height: 15.adaptSize,
                  width: 15.adaptSize,
                  margin: EdgeInsets.only(left: 40.h, top: 15.v, bottom: 15.v))
            ])));
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

  /// Navigates to the homeScreen when the action is triggered.
  onTapBtnArrowLeft(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.homeScreen,
    );
  }

  /// Navigates to the administratorsScreen when the action is triggered.
  onTapReviews(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.administratorsScreen,
    );
  }
}
