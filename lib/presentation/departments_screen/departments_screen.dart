import '../departments_screen/widgets/departmentsscreen_item_widget.dart';
import 'bloc/departments_bloc.dart';
import 'models/departments_model.dart';
import 'models/departmentsscreen_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:pmis/core/app_export.dart';
import 'package:pmis/widgets/custom_bottom_bar.dart';
import 'package:pmis/widgets/custom_outlined_button.dart';
import 'package:pmis/widgets/custom_radio_button.dart';

// ignore_for_file: must_be_immutable
class DepartmentsScreen extends StatelessWidget {
  DepartmentsScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<DepartmentsBloc>(
        create: (context) => DepartmentsBloc(
            DepartmentsState(departmentsModelObj: DepartmentsModel()))
          ..add(DepartmentsInitialEvent()),
        child: DepartmentsScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: mediaQueryData.size.width,
                child: SingleChildScrollView(
                    child: Column(children: [
                  _buildPathImageColumn(context),
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
                                decoration:
                                    AppDecoration.gradientBlueGrayToBlueGray,
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      CustomOutlinedButton(
                                          width: 243.h,
                                          text: "lbl_search_here".tr),
                                      SizedBox(height: 26.v),
                                      _buildViverraTinciduntRow(context),
                                      SizedBox(height: 14.v),
                                      _buildViverraTinciduntRow1(context),
                                      SizedBox(height: 76.v)
                                    ]))),
                        _buildViverraTinciduntRow2(context)
                      ]))
                ]))),
            bottomNavigationBar: Padding(
                padding: EdgeInsets.symmetric(horizontal: 32.h),
                child: _buildBottomBarColumn(context))));
  }

  /// Section Widget
  Widget _buildPathImageColumn(BuildContext context) {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(horizontal: 33.h, vertical: 25.v),
        decoration: BoxDecoration(
            image: DecorationImage(
                image: fs.Svg(ImageConstant.imgGroup800), fit: BoxFit.cover)),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 3.v),
              CustomImageView(
                  imagePath: ImageConstant.imgPath2362,
                  height: 26.adaptSize,
                  width: 26.adaptSize),
              SizedBox(height: 40.v),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
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
                      ]))),
              SizedBox(height: 39.v),
              Padding(
                  padding: EdgeInsets.only(left: 21.h),
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
                  ]))
            ]));
  }

  /// Section Widget
  Widget _buildViverraTinciduntRow(BuildContext context) {
    return GestureDetector(
        onTap: () {
          onTapViverraTinciduntRow(context);
        },
        child: Container(
            margin: EdgeInsets.only(left: 1.h),
            padding: EdgeInsets.symmetric(horizontal: 21.h, vertical: 13.v),
            decoration: AppDecoration.outlineBlack
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder26),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("msg_est_lobortis_curabitur".tr,
                            style: theme.textTheme.titleMedium),
                        SizedBox(height: 5.v),
                        Padding(
                            padding: EdgeInsets.only(left: 3.h),
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
                                  Padding(
                                      padding: EdgeInsets.only(bottom: 6.v),
                                      child: _buildFourHundredForty(context,
                                          userTitle: "lbl_03".tr,
                                          userSubtitle:
                                              "lbl_vel_consequat".tr)),
                                  Align(
                                      alignment: Alignment.centerLeft,
                                      child: Container(
                                          height: 53.v,
                                          width: 93.h,
                                          decoration: BoxDecoration(
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                      ImageConstant
                                                          .imgGroup1147),
                                                  fit: BoxFit.cover)),
                                          child: Stack(
                                              alignment: Alignment.topLeft,
                                              children: [
                                                CustomImageView(
                                                    imagePath: ImageConstant
                                                        .imgGroup1072,
                                                    height: 41.v,
                                                    width: 39.h,
                                                    alignment:
                                                        Alignment.centerLeft,
                                                    margin: EdgeInsets.only(
                                                        left: 2.h)),
                                                CustomImageView(
                                                    imagePath: ImageConstant
                                                        .imgGroup1073,
                                                    height: 40.v,
                                                    width: 5.h,
                                                    alignment:
                                                        Alignment.topLeft,
                                                    margin: EdgeInsets.only(
                                                        left: 7.h)),
                                                Align(
                                                    alignment:
                                                        Alignment.topLeft,
                                                    child: Container(
                                                        height: 41.v,
                                                        width: 36.h,
                                                        margin: EdgeInsets.only(
                                                            left: 8.h),
                                                        child: Stack(
                                                            alignment: Alignment
                                                                .topLeft,
                                                            children: [
                                                              CustomImageView(
                                                                  imagePath:
                                                                      ImageConstant
                                                                          .imgGroup1076,
                                                                  height: 41.v,
                                                                  width: 36.h,
                                                                  alignment:
                                                                      Alignment
                                                                          .center),
                                                              Align(
                                                                  alignment:
                                                                      Alignment
                                                                          .topLeft,
                                                                  child: Padding(
                                                                      padding: EdgeInsets.only(left: 5.h, top: 7.v),
                                                                      child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, children: [
                                                                        Container(
                                                                            height:
                                                                                3.v,
                                                                            width: 14.h,
                                                                            margin: EdgeInsets.only(left: 1.h),
                                                                            child: Stack(alignment: Alignment.topLeft, children: [
                                                                              CustomImageView(imagePath: ImageConstant.imgGroup1274, height: 2.v, width: 14.h, alignment: Alignment.bottomCenter),
                                                                              CustomImageView(imagePath: ImageConstant.imgGroup1277, height: 2.v, width: 13.h, alignment: Alignment.topLeft)
                                                                            ])),
                                                                        SizedBox(
                                                                            height:
                                                                                2.v),
                                                                        BlocSelector<
                                                                                DepartmentsBloc,
                                                                                DepartmentsState,
                                                                                DepartmentsModel?>(
                                                                            selector: (state) =>
                                                                                state.departmentsModelObj,
                                                                            builder: (context, departmentsModelObj) {
                                                                              return ListView.separated(
                                                                                  physics: NeverScrollableScrollPhysics(),
                                                                                  shrinkWrap: true,
                                                                                  separatorBuilder: (context, index) {
                                                                                    return SizedBox(height: 1.v);
                                                                                  },
                                                                                  itemCount: departmentsModelObj?.departmentsscreenItemList.length ?? 0,
                                                                                  itemBuilder: (context, index) {
                                                                                    DepartmentsscreenItemModel model = departmentsModelObj?.departmentsscreenItemList[index] ?? DepartmentsscreenItemModel();
                                                                                    return DepartmentsscreenItemWidget(model);
                                                                                  });
                                                                            })
                                                                      ])))
                                                            ]))),
                                                CustomImageView(
                                                    imagePath: ImageConstant
                                                        .imgPath2299,
                                                    height: 28.v,
                                                    width: 48.h,
                                                    alignment:
                                                        Alignment.bottomLeft,
                                                    margin: EdgeInsets.only(
                                                        left: 5.h,
                                                        bottom: 4.v)),
                                                Align(
                                                    alignment:
                                                        Alignment.bottomLeft,
                                                    child: Container(
                                                        height: 28.v,
                                                        width: 48.h,
                                                        margin: EdgeInsets.only(
                                                            left: 5.h,
                                                            bottom: 4.v),
                                                        child: Stack(
                                                            alignment: Alignment
                                                                .center,
                                                            children: [
                                                              CustomImageView(
                                                                  imagePath:
                                                                      ImageConstant
                                                                          .imgPath2299,
                                                                  height: 28.v,
                                                                  width: 48.h,
                                                                  alignment:
                                                                      Alignment
                                                                          .center),
                                                              Align(
                                                                  alignment:
                                                                      Alignment
                                                                          .center,
                                                                  child: SizedBox(
                                                                      height: 28.v,
                                                                      width: 48.h,
                                                                      child: Stack(alignment: Alignment.center, children: [
                                                                        CustomImageView(
                                                                            imagePath:
                                                                                ImageConstant.imgPath2301,
                                                                            height: 28.v,
                                                                            width: 48.h,
                                                                            alignment: Alignment.center),
                                                                        Align(
                                                                            alignment:
                                                                                Alignment.center,
                                                                            child: SizedBox(
                                                                                height: 28.v,
                                                                                width: 48.h,
                                                                                child: Stack(alignment: Alignment.center, children: [
                                                                                  _buildPath(context, userImage: ImageConstant.imgPath2302, userImage2: ImageConstant.imgPath2303),
                                                                                  Align(
                                                                                      alignment: Alignment.center,
                                                                                      child: SizedBox(
                                                                                          height: 28.v,
                                                                                          width: 48.h,
                                                                                          child: Stack(alignment: Alignment.center, children: [
                                                                                            CustomImageView(imagePath: ImageConstant.imgPath2303, height: 28.v, width: 48.h, alignment: Alignment.center),
                                                                                            Align(
                                                                                                alignment: Alignment.center,
                                                                                                child: SizedBox(
                                                                                                    height: 28.v,
                                                                                                    width: 48.h,
                                                                                                    child: Stack(alignment: Alignment.center, children: [
                                                                                                      CustomImageView(imagePath: ImageConstant.imgPath2305, height: 28.v, width: 48.h, alignment: Alignment.center),
                                                                                                      Align(
                                                                                                          alignment: Alignment.center,
                                                                                                          child: SizedBox(
                                                                                                              height: 28.v,
                                                                                                              width: 48.h,
                                                                                                              child: Stack(alignment: Alignment.center, children: [
                                                                                                                _buildPath(context, userImage: ImageConstant.imgPath2306, userImage2: ImageConstant.imgPath2307),
                                                                                                                Align(
                                                                                                                    alignment: Alignment.center,
                                                                                                                    child: SizedBox(
                                                                                                                        height: 27.v,
                                                                                                                        width: 48.h,
                                                                                                                        child: Stack(alignment: Alignment.center, children: [
                                                                                                                          CustomImageView(imagePath: ImageConstant.imgPath2307, height: 27.v, width: 48.h, alignment: Alignment.center),
                                                                                                                          Align(
                                                                                                                              alignment: Alignment.center,
                                                                                                                              child: SizedBox(
                                                                                                                                  height: 27.v,
                                                                                                                                  width: 48.h,
                                                                                                                                  child: Stack(alignment: Alignment.center, children: [
                                                                                                                                    CustomImageView(imagePath: ImageConstant.imgPath2309, height: 27.v, width: 48.h, alignment: Alignment.center),
                                                                                                                                    Align(
                                                                                                                                        alignment: Alignment.center,
                                                                                                                                        child: SizedBox(
                                                                                                                                            height: 27.v,
                                                                                                                                            width: 48.h,
                                                                                                                                            child: Stack(alignment: Alignment.center, children: [
                                                                                                                                              _buildPath(context, userImage: ImageConstant.imgPath2310, userImage2: ImageConstant.imgPath2310),
                                                                                                                                              Align(
                                                                                                                                                  alignment: Alignment.center,
                                                                                                                                                  child: SizedBox(
                                                                                                                                                      height: 27.v,
                                                                                                                                                      width: 48.h,
                                                                                                                                                      child: Stack(alignment: Alignment.center, children: [
                                                                                                                                                        CustomImageView(imagePath: ImageConstant.imgPath2312, height: 27.v, width: 48.h, alignment: Alignment.center),
                                                                                                                                                        Align(
                                                                                                                                                            alignment: Alignment.center,
                                                                                                                                                            child: SizedBox(
                                                                                                                                                                height: 27.v,
                                                                                                                                                                width: 48.h,
                                                                                                                                                                child: Stack(alignment: Alignment.center, children: [
                                                                                                                                                                  CustomImageView(imagePath: ImageConstant.imgPath2313, height: 27.v, width: 48.h, alignment: Alignment.center),
                                                                                                                                                                  CustomImageView(imagePath: ImageConstant.imgPath2314, height: 27.v, width: 48.h, alignment: Alignment.center)
                                                                                                                                                                ])))
                                                                                                                                                      ])))
                                                                                                                                            ])))
                                                                                                                                  ])))
                                                                                                                        ])))
                                                                                                              ])))
                                                                                                    ])))
                                                                                          ])))
                                                                                ])))
                                                                      ])))
                                                            ]))),
                                                Align(
                                                    alignment:
                                                        Alignment.bottomLeft,
                                                    child: Container(
                                                        height: 27.v,
                                                        width: 48.h,
                                                        margin: EdgeInsets.only(
                                                            left: 6.h,
                                                            bottom: 4.v),
                                                        child: Stack(
                                                            alignment: Alignment
                                                                .center,
                                                            children: [
                                                              CustomImageView(
                                                                  imagePath:
                                                                      ImageConstant
                                                                          .imgPath2314,
                                                                  height: 27.v,
                                                                  width: 48.h,
                                                                  alignment:
                                                                      Alignment
                                                                          .center),
                                                              Align(
                                                                  alignment:
                                                                      Alignment
                                                                          .center,
                                                                  child: SizedBox(
                                                                      height: 27.v,
                                                                      width: 48.h,
                                                                      child: Stack(alignment: Alignment.center, children: [
                                                                        Align(
                                                                            alignment:
                                                                                Alignment.center,
                                                                            child: SizedBox(
                                                                                height: 27.v,
                                                                                width: 48.h,
                                                                                child: Stack(alignment: Alignment.center, children: [
                                                                                  CustomImageView(imagePath: ImageConstant.imgPath2316, height: 27.v, width: 48.h, alignment: Alignment.center),
                                                                                  Align(
                                                                                      alignment: Alignment.center,
                                                                                      child: SizedBox(
                                                                                          height: 27.v,
                                                                                          width: 48.h,
                                                                                          child: Stack(alignment: Alignment.center, children: [
                                                                                            CustomImageView(imagePath: ImageConstant.imgPath2317, height: 27.v, width: 48.h, alignment: Alignment.center),
                                                                                            CustomImageView(imagePath: ImageConstant.imgPath2318, height: 26.v, width: 47.h, alignment: Alignment.center)
                                                                                          ])))
                                                                                ]))),
                                                                        Align(
                                                                            alignment:
                                                                                Alignment.center,
                                                                            child: SizedBox(
                                                                                height: 26.v,
                                                                                width: 47.h,
                                                                                child: Stack(alignment: Alignment.center, children: [
                                                                                  CustomImageView(imagePath: ImageConstant.imgPath2318, height: 26.v, width: 47.h, alignment: Alignment.center),
                                                                                  CustomImageView(imagePath: ImageConstant.imgPath2318, height: 26.v, width: 47.h, alignment: Alignment.center)
                                                                                ])))
                                                                      ])))
                                                            ]))),
                                                CustomImageView(
                                                    imagePath: ImageConstant
                                                        .imgPath2321,
                                                    height: 26.v,
                                                    width: 47.h,
                                                    alignment:
                                                        Alignment.bottomLeft,
                                                    margin: EdgeInsets.only(
                                                        left: 6.h,
                                                        bottom: 4.v)),
                                                CustomImageView(
                                                    imagePath: ImageConstant
                                                        .imgPath2321,
                                                    height: 26.v,
                                                    width: 47.h,
                                                    alignment:
                                                        Alignment.bottomLeft,
                                                    margin: EdgeInsets.only(
                                                        left: 6.h,
                                                        bottom: 4.v)),
                                                CustomImageView(
                                                    imagePath: ImageConstant
                                                        .imgPath2323,
                                                    height: 26.v,
                                                    width: 47.h,
                                                    alignment:
                                                        Alignment.bottomLeft,
                                                    margin: EdgeInsets.only(
                                                        left: 6.h,
                                                        bottom: 4.v)),
                                                CustomImageView(
                                                    imagePath: ImageConstant
                                                        .imgPath2324,
                                                    height: 26.v,
                                                    width: 47.h,
                                                    alignment:
                                                        Alignment.bottomLeft,
                                                    margin: EdgeInsets.only(
                                                        left: 6.h,
                                                        bottom: 4.v)),
                                                CustomImageView(
                                                    imagePath: ImageConstant
                                                        .imgPath2325,
                                                    height: 26.v,
                                                    width: 47.h,
                                                    alignment:
                                                        Alignment.bottomLeft,
                                                    margin: EdgeInsets.only(
                                                        left: 6.h,
                                                        bottom: 4.v)),
                                                Opacity(
                                                    opacity: 0.399994,
                                                    child: CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgGroup2674,
                                                        height: 28.v,
                                                        width: 48.h,
                                                        alignment: Alignment
                                                            .bottomLeft,
                                                        margin: EdgeInsets.only(
                                                            left: 5.h,
                                                            bottom: 4.v))),
                                                CustomImageView(
                                                    imagePath: ImageConstant
                                                        .imgGroup2768,
                                                    height: 13.v,
                                                    width: 93.h,
                                                    alignment:
                                                        Alignment.bottomCenter)
                                              ])))
                                ])),
                        SizedBox(height: 25.v),
                        BlocBuilder<DepartmentsBloc, DepartmentsState>(
                            builder: (context, state) {
                          return state.departmentsModelObj!.radioList.isNotEmpty
                              ? Row(children: [
                                  CustomRadioButton(
                                      text: "msg_230_viverra_tincidunt".tr,
                                      value: state.departmentsModelObj
                                              ?.radioList[0] ??
                                          "",
                                      groupValue: state.radioGroup,
                                      onChange: (value) {
                                        context.read<DepartmentsBloc>().add(
                                            ChangeRadioButtonEvent(
                                                value: value));
                                      }),
                                  Padding(
                                      padding: EdgeInsets.only(left: 15.h),
                                      child: CustomRadioButton(
                                          text: "msg_360_viverra_tincidunt".tr,
                                          value: state.departmentsModelObj
                                                  ?.radioList[1] ??
                                              "",
                                          groupValue: state.radioGroup,
                                          onChange: (value) {
                                            context.read<DepartmentsBloc>().add(
                                                ChangeRadioButtonEvent(
                                                    value: value));
                                          }))
                                ])
                              : Container();
                        }),
                        SizedBox(height: 9.v),
                        BlocBuilder<DepartmentsBloc, DepartmentsState>(
                            builder: (context, state) {
                          return state
                                  .departmentsModelObj!.radioList1.isNotEmpty
                              ? Row(children: [
                                  CustomRadioButton(
                                      text: "msg_410_viverra_tincidunt".tr,
                                      value: state.departmentsModelObj
                                              ?.radioList1[0] ??
                                          "",
                                      groupValue: state.radioGroup1,
                                      onChange: (value) {
                                        context.read<DepartmentsBloc>().add(
                                            ChangeRadioButton1Event(
                                                value: value));
                                      }),
                                  Padding(
                                      padding: EdgeInsets.only(left: 15.h),
                                      child: CustomRadioButton(
                                          text: "msg_120_viverra_tincidunt".tr,
                                          value: state.departmentsModelObj
                                                  ?.radioList1[1] ??
                                              "",
                                          groupValue: state.radioGroup1,
                                          onChange: (value) {
                                            context.read<DepartmentsBloc>().add(
                                                ChangeRadioButton1Event(
                                                    value: value));
                                          }))
                                ])
                              : Container();
                        })
                      ]),
                  Spacer(),
                  Padding(
                      padding: EdgeInsets.only(top: 48.v, bottom: 3.v),
                      child: _buildFifty(context,
                          image: ImageConstant.imgRectangle1433,
                          userLabel: "lbl_10".tr)),
                  Padding(
                      padding:
                          EdgeInsets.only(left: 29.h, top: 48.v, bottom: 3.v),
                      child: _buildFifty(context,
                          image: ImageConstant.imgRectangle1434,
                          userLabel: "lbl_50".tr))
                ])));
  }

  /// Section Widget
  Widget _buildViverraTinciduntRow1(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 1.h),
        padding: EdgeInsets.symmetric(horizontal: 22.h, vertical: 13.v),
        decoration: AppDecoration.outlineBlack
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder26),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text("msg_est_lobortis_curabitur".tr,
                    style: theme.textTheme.titleMedium),
                SizedBox(height: 5.v),
                Text("lbl_vel_consequat".tr,
                    style: CustomTextStyles.helveticaNeueBluegray200Regular),
                SizedBox(height: 20.v),
                SizedBox(
                    height: 53.v,
                    width: 115.h,
                    child: Stack(alignment: Alignment.centerLeft, children: [
                      Padding(
                          padding: EdgeInsets.only(bottom: 6.v),
                          child: _buildFourHundredForty(context,
                              userTitle: "lbl_440".tr,
                              userSubtitle: "lbl_vel_consequat".tr)),
                      CustomImageView(
                          imagePath: ImageConstant.imgThumbsUp,
                          height: 53.v,
                          width: 93.h,
                          alignment: Alignment.centerLeft)
                    ])),
                SizedBox(height: 25.v),
                BlocBuilder<DepartmentsBloc, DepartmentsState>(
                    builder: (context, state) {
                  return state.departmentsModelObj!.radioList2.isNotEmpty
                      ? Row(children: [
                          CustomRadioButton(
                              text: "msg_230_viverra_tincidunt".tr,
                              value: state.departmentsModelObj?.radioList2[0] ??
                                  "",
                              groupValue: state.radioGroup2,
                              onChange: (value) {
                                context
                                    .read<DepartmentsBloc>()
                                    .add(ChangeRadioButton2Event(value: value));
                              }),
                          Padding(
                              padding: EdgeInsets.only(left: 15.h),
                              child: CustomRadioButton(
                                  text: "msg_360_viverra_tincidunt".tr,
                                  value: state
                                          .departmentsModelObj?.radioList2[1] ??
                                      "",
                                  groupValue: state.radioGroup2,
                                  onChange: (value) {
                                    context.read<DepartmentsBloc>().add(
                                        ChangeRadioButton2Event(value: value));
                                  }))
                        ])
                      : Container();
                }),
                SizedBox(height: 9.v),
                BlocBuilder<DepartmentsBloc, DepartmentsState>(
                    builder: (context, state) {
                  return state.departmentsModelObj!.radioList3.isNotEmpty
                      ? Row(children: [
                          CustomRadioButton(
                              text: "msg_410_viverra_tincidunt".tr,
                              value: state.departmentsModelObj?.radioList3[0] ??
                                  "",
                              groupValue: state.radioGroup3,
                              onChange: (value) {
                                context
                                    .read<DepartmentsBloc>()
                                    .add(ChangeRadioButton3Event(value: value));
                              }),
                          Padding(
                              padding: EdgeInsets.only(left: 15.h),
                              child: CustomRadioButton(
                                  text: "msg_120_viverra_tincidunt".tr,
                                  value: state
                                          .departmentsModelObj?.radioList3[1] ??
                                      "",
                                  groupValue: state.radioGroup3,
                                  onChange: (value) {
                                    context.read<DepartmentsBloc>().add(
                                        ChangeRadioButton3Event(value: value));
                                  }))
                        ])
                      : Container();
                })
              ]),
              Spacer(),
              Padding(
                  padding: EdgeInsets.only(top: 49.v, bottom: 3.v),
                  child: _buildFifty(context,
                      image: ImageConstant.imgRectangle1433OrangeA100,
                      userLabel: "lbl_35".tr)),
              Padding(
                  padding: EdgeInsets.only(left: 29.h, top: 49.v, bottom: 3.v),
                  child: _buildFifty(context,
                      image: ImageConstant.imgRectangle1434Teal300,
                      userLabel: "lbl_100".tr))
            ]));
  }

  /// Section Widget
  Widget _buildViverraTinciduntRow2(BuildContext context) {
    return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
            margin: EdgeInsets.only(left: 32.h, top: 530.v, right: 32.h),
            padding: EdgeInsets.symmetric(horizontal: 22.h, vertical: 13.v),
            decoration: AppDecoration.outlineBlack
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder26),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("msg_est_lobortis_curabitur".tr,
                            style: theme.textTheme.titleMedium),
                        SizedBox(height: 5.v),
                        Padding(
                            padding: EdgeInsets.only(left: 3.h),
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
                                            Text("lbl_03".tr,
                                                style: theme
                                                    .textTheme.titleMedium),
                                            SizedBox(height: 7.v),
                                            Text("lbl_vel_consequat".tr,
                                                style: CustomTextStyles
                                                    .helveticaNeueBluegray200Regular)
                                          ])),
                                  CustomImageView(
                                      imagePath: ImageConstant
                                          .imgThumbsUpOnprimary53x93,
                                      height: 53.v,
                                      width: 93.h,
                                      alignment: Alignment.centerLeft)
                                ])),
                        SizedBox(height: 27.v),
                        BlocBuilder<DepartmentsBloc, DepartmentsState>(
                            builder: (context, state) {
                          return state
                                  .departmentsModelObj!.radioList4.isNotEmpty
                              ? Row(children: [
                                  CustomRadioButton(
                                      text: "msg_230_viverra_tincidunt".tr,
                                      value: state.departmentsModelObj
                                              ?.radioList4[0] ??
                                          "",
                                      groupValue: state.forty,
                                      onChange: (value) {
                                        context.read<DepartmentsBloc>().add(
                                            ChangeRadioButton4Event(
                                                value: value));
                                      }),
                                  Padding(
                                      padding: EdgeInsets.only(left: 15.h),
                                      child: CustomRadioButton(
                                          text: "msg_360_viverra_tincidunt".tr,
                                          value: state.departmentsModelObj
                                                  ?.radioList4[1] ??
                                              "",
                                          groupValue: state.forty,
                                          onChange: (value) {
                                            context.read<DepartmentsBloc>().add(
                                                ChangeRadioButton4Event(
                                                    value: value));
                                          }))
                                ])
                              : Container();
                        }),
                        SizedBox(height: 12.v),
                        BlocBuilder<DepartmentsBloc, DepartmentsState>(
                            builder: (context, state) {
                          return state
                                  .departmentsModelObj!.radioList5.isNotEmpty
                              ? Row(children: [
                                  CustomRadioButton(
                                      text: "msg_410_viverra_tincidunt".tr,
                                      value: state.departmentsModelObj
                                              ?.radioList5[0] ??
                                          "",
                                      groupValue: state.radioGroup4,
                                      onChange: (value) {
                                        context.read<DepartmentsBloc>().add(
                                            ChangeRadioButton5Event(
                                                value: value));
                                      }),
                                  Padding(
                                      padding: EdgeInsets.only(left: 15.h),
                                      child: CustomRadioButton(
                                          text: "msg_120_viverra_tincidunt".tr,
                                          value: state.departmentsModelObj
                                                  ?.radioList5[1] ??
                                              "",
                                          groupValue: state.radioGroup4,
                                          onChange: (value) {
                                            context.read<DepartmentsBloc>().add(
                                                ChangeRadioButton5Event(
                                                    value: value));
                                          }))
                                ])
                              : Container();
                        })
                      ]),
                  Spacer(),
                  Container(
                      margin: EdgeInsets.only(top: 48.v, bottom: 3.v),
                      decoration: AppDecoration.fillIndigo.copyWith(
                          borderRadius: BorderRadiusStyle.customBorderTL9),
                      child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            SizedBox(height: 71.v),
                            Container(
                                width: 28.h,
                                padding: EdgeInsets.symmetric(
                                    horizontal: 3.h, vertical: 6.v),
                                decoration: AppDecoration.fillDeepOrange
                                    .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.customBorderTL9),
                                child: Text("lbl_40".tr,
                                    style: theme.textTheme.labelSmall))
                          ])),
                  Container(
                      margin:
                          EdgeInsets.only(left: 29.h, top: 48.v, bottom: 3.v),
                      decoration: AppDecoration.fillIndigo.copyWith(
                          borderRadius: BorderRadiusStyle.customBorderTL9),
                      child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            SizedBox(height: 28.v),
                            Container(
                                width: 28.h,
                                padding: EdgeInsets.symmetric(
                                    horizontal: 3.h, vertical: 6.v),
                                decoration: AppDecoration.fillPrimaryContainer
                                    .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.customBorderTL9),
                                child: Text("lbl_88".tr,
                                    style: theme.textTheme.labelSmall))
                          ]))
                ])));
  }

  /// Section Widget
  Widget _buildBottomBarColumn(BuildContext context) {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {});
  }

  /// Common widget
  Widget _buildPath(
    BuildContext context, {
    required String userImage,
    required String userImage2,
  }) {
    return SizedBox(
        height: 28.v,
        width: 48.h,
        child: Stack(alignment: Alignment.center, children: [
          CustomImageView(
              imagePath: userImage,
              height: 28.v,
              width: 48.h,
              alignment: Alignment.center),
          CustomImageView(
              imagePath: userImage2,
              height: 27.v,
              width: 48.h,
              alignment: Alignment.center)
        ]));
  }

  /// Common widget
  Widget _buildFifty(
    BuildContext context, {
    required String image,
    required String userLabel,
  }) {
    return SizedBox(
        height: 127.v,
        width: 28.h,
        child: Stack(alignment: Alignment.bottomCenter, children: [
          CustomImageView(
              imagePath: ImageConstant.imgRectangle1431,
              height: 127.v,
              width: 28.h,
              alignment: Alignment.center),
          Align(
              alignment: Alignment.bottomCenter,
              child: SizedBox(
                  height: 79.v,
                  width: 28.h,
                  child: Stack(alignment: Alignment.bottomRight, children: [
                    CustomImageView(
                        imagePath: image,
                        height: 79.v,
                        width: 28.h,
                        alignment: Alignment.center),
                    Align(
                        alignment: Alignment.bottomRight,
                        child: Padding(
                            padding: EdgeInsets.only(right: 3.h, bottom: 5.v),
                            child: Text(userLabel,
                                style: theme.textTheme.labelSmall!.copyWith(
                                    color: theme.colorScheme.onPrimary))))
                  ])))
        ]));
  }

  /// Common widget
  Widget _buildFourHundredForty(
    BuildContext context, {
    required String userTitle,
    required String userSubtitle,
  }) {
    return Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(userTitle,
              style: theme.textTheme.titleMedium!
                  .copyWith(color: appTheme.teal30004)),
          SizedBox(height: 5.v),
          Text(userSubtitle,
              style: CustomTextStyles.helveticaNeueBluegray200Regular
                  .copyWith(color: appTheme.blueGray200))
        ]);
  }

  /// Navigates to the homeScreen when the action is triggered.
  onTapTxtAgencies(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.homeScreen,
    );
  }

  /// Navigates to the departmentHomeScreen when the action is triggered.
  onTapViverraTinciduntRow(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.departmentHomeScreen,
    );
  }
}
