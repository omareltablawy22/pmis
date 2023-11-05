import 'bloc/reset_password_bloc.dart';
import 'models/reset_password_model.dart';
import 'package:flutter/material.dart';
import 'package:pmis/core/app_export.dart';
import 'package:pmis/core/utils/validation_functions.dart';
import 'package:pmis/widgets/custom_elevated_button.dart';
import 'package:pmis/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class ResetPasswordScreen extends StatelessWidget {
  ResetPasswordScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<ResetPasswordBloc>(
        create: (context) => ResetPasswordBloc(
            ResetPasswordState(resetPasswordModelObj: ResetPasswordModel()))
          ..add(ResetPasswordInitialEvent()),
        child: ResetPasswordScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Form(
                key: _formKey,
                child: SizedBox(
                    width: double.maxFinite,
                    child: SingleChildScrollView(
                        child: Column(children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgGroup231Indigo30084x126,
                          height: 74.v,
                          width: 126.h),
                      SizedBox(height: 45.v),
                      Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                              height: 133.v,
                              width: 128.h,
                              margin: EdgeInsets.only(right: 138.h),
                              child: Stack(
                                  alignment: Alignment.bottomRight,
                                  children: [
                                    CustomImageView(
                                        imagePath: ImageConstant.imgGroup307,
                                        height: 133.v,
                                        width: 121.h,
                                        alignment: Alignment.centerLeft),
                                    CustomImageView(
                                        imagePath: ImageConstant.imgLocation,
                                        height: 28.v,
                                        width: 47.h,
                                        alignment: Alignment.bottomRight,
                                        margin: EdgeInsets.only(bottom: 9.v))
                                  ]))),
                      SizedBox(height: 28.v),
                      Text("lbl_verification".tr,
                          style: theme.textTheme.headlineMedium),
                      SizedBox(height: 12.v),
                      SizedBox(
                          width: 176.h,
                          child: Text("msg_we_will_send_you".tr,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                              style: CustomTextStyles.bodySmallGray600
                                  .copyWith(height: 1.17))),
                      SizedBox(height: 14.v),
                      Padding(
                          padding: EdgeInsets.symmetric(horizontal: 48.h),
                          child: BlocSelector<ResetPasswordBloc,
                                  ResetPasswordState, TextEditingController?>(
                              selector: (state) => state.emailController,
                              builder: (context, emailController) {
                                return CustomTextFormField(
                                    controller: emailController,
                                    hintText: "lbl_email".tr,
                                    textInputAction: TextInputAction.done,
                                    textInputType: TextInputType.emailAddress,
                                    validator: (value) {
                                      if (value == null ||
                                          (!isValidEmail(value,
                                              isRequired: true))) {
                                        return "err_msg_please_enter_valid_email"
                                            .tr;
                                      }
                                      return null;
                                    });
                              })),
                      SizedBox(height: 30.v),
                      SizedBox(
                          height: 768.v,
                          width: double.maxFinite,
                          child:
                              Stack(alignment: Alignment.topCenter, children: [
                            Align(
                                alignment: Alignment.center,
                                child: SizedBox(
                                    height: 745.v,
                                    width: double.maxFinite,
                                    child: Stack(
                                        alignment: Alignment.topRight,
                                        children: [
                                          CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgPolygon1,
                                              height: 390.v,
                                              width: 430.h,
                                              alignment: Alignment.topCenter),
                                          CustomImageView(
                                              imagePath: ImageConstant.imgPlay,
                                              height: 85.v,
                                              width: 76.h,
                                              alignment: Alignment.topRight,
                                              margin: EdgeInsets.only(
                                                  top: 149.v, right: 13.h)),
                                          CustomImageView(
                                              imagePath: ImageConstant.imgPlay,
                                              height: 85.v,
                                              width: 76.h,
                                              alignment: Alignment.topRight,
                                              margin: EdgeInsets.only(
                                                  top: 200.v, right: 164.h)),
                                          Align(
                                              alignment: Alignment.topLeft,
                                              child: Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 26.h, top: 220.v),
                                                  child: Row(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        CustomImageView(
                                                            imagePath:
                                                                ImageConstant
                                                                    .imgPolygon6,
                                                            height: 46.v,
                                                            width: 42.h,
                                                            margin:
                                                                EdgeInsets.only(
                                                                    top: 22.v,
                                                                    bottom:
                                                                        38.v)),
                                                        CustomImageView(
                                                            imagePath:
                                                                ImageConstant
                                                                    .imgPlay,
                                                            height: 62.v,
                                                            width: 57.h,
                                                            margin:
                                                                EdgeInsets.only(
                                                                    top: 45.v)),
                                                        Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                                    left: 9.h,
                                                                    bottom:
                                                                        47.v),
                                                            child: Column(
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  CustomImageView(
                                                                      imagePath:
                                                                          ImageConstant
                                                                              .imgPolygon6,
                                                                      height:
                                                                          23.v,
                                                                      width:
                                                                          21.h),
                                                                  SizedBox(
                                                                      height:
                                                                          7.v),
                                                                  CustomImageView(
                                                                      imagePath:
                                                                          ImageConstant
                                                                              .imgPolygon9,
                                                                      height:
                                                                          29.v,
                                                                      width:
                                                                          26.h)
                                                                ]))
                                                      ]))),
                                          CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgPolygon6,
                                              height: 46.v,
                                              width: 42.h,
                                              alignment: Alignment.topRight,
                                              margin: EdgeInsets.only(
                                                  top: 138.v, right: 117.h)),
                                          CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgPolygon6,
                                              height: 29.v,
                                              width: 26.h,
                                              alignment: Alignment.topRight,
                                              margin: EdgeInsets.only(
                                                  top: 175.v, right: 143.h))
                                        ]))),
                            CustomElevatedButton(
                                width: 165.h,
                                text: "lbl_get".tr.toUpperCase(),
                                rightIcon: Container(
                                    margin: EdgeInsets.only(),
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(24.h)),
                                    child: CustomImageView(
                                        imagePath:
                                            ImageConstant.imgRectangle121,
                                        height: 49.v,
                                        width: 165.h)),
                                buttonStyle: CustomButtonStyles.none,
                                decoration: CustomButtonStyles
                                    .gradientGreenAToErrorContainerTL24Decoration,
                                onPressed: () {
                                  onTapGET(context);
                                },
                                alignment: Alignment.topCenter)
                          ]))
                    ]))))));
  }

  /// Navigates to the otpScreenOldScreen when the action is triggered.
  onTapGET(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.otpScreenOldScreen,
    );
  }
}
