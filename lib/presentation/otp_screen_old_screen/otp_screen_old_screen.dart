import 'bloc/otp_screen_old_bloc.dart';
import 'models/otp_screen_old_model.dart';
import 'package:flutter/material.dart';
import 'package:pmis/core/app_export.dart';
import 'package:pmis/core/utils/validation_functions.dart';
import 'package:pmis/widgets/custom_elevated_button.dart';
import 'package:pmis/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class OtpScreenOldScreen extends StatelessWidget {
  OtpScreenOldScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<OtpScreenOldBloc>(
        create: (context) => OtpScreenOldBloc(
            OtpScreenOldState(otpScreenOldModelObj: OtpScreenOldModel()))
          ..add(OtpScreenOldInitialEvent()),
        child: OtpScreenOldScreen());
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
                      SizedBox(
                          height: 133.v,
                          width: 145.h,
                          child:
                              Stack(alignment: Alignment.bottomLeft, children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgGroup307,
                                height: 133.v,
                                width: 121.h,
                                alignment: Alignment.centerRight),
                            CustomImageView(
                                imagePath: ImageConstant.imgLocation,
                                height: 28.v,
                                width: 47.h,
                                alignment: Alignment.bottomLeft,
                                margin: EdgeInsets.only(bottom: 38.v))
                          ])),
                      SizedBox(height: 28.v),
                      Text("lbl_verification".tr,
                          style: theme.textTheme.headlineMedium),
                      SizedBox(height: 12.v),
                      Text("msg_you_will_get_a_otp".tr,
                          style: CustomTextStyles.bodySmallGray600),
                      SizedBox(height: 30.v),
                      Padding(
                          padding: EdgeInsets.symmetric(horizontal: 48.h),
                          child: BlocSelector<OtpScreenOldBloc,
                                  OtpScreenOldState, TextEditingController?>(
                              selector: (state) => state.passwordController,
                              builder: (context, passwordController) {
                                return CustomTextFormField(
                                    controller: passwordController,
                                    hintText: "lbl".tr,
                                    hintStyle: theme.textTheme.headlineLarge!,
                                    textInputAction: TextInputAction.done,
                                    textInputType:
                                        TextInputType.visiblePassword,
                                    validator: (value) {
                                      if (value == null ||
                                          (!isValidPassword(value,
                                              isRequired: true))) {
                                        return "err_msg_please_enter_valid_password"
                                            .tr;
                                      }
                                      return null;
                                    },
                                    obscureText: true,
                                    contentPadding: EdgeInsets.symmetric(
                                        horizontal: 30.h, vertical: 12.v));
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
                                                  top: 175.v, right: 143.h)),
                                          Align(
                                              alignment: Alignment.topCenter,
                                              child: Padding(
                                                  padding: EdgeInsets.only(
                                                      top: 55.v),
                                                  child: RichText(
                                                      text: TextSpan(children: [
                                                        TextSpan(
                                                            text:
                                                                "msg_didn_t_receive_the2"
                                                                    .tr,
                                                            style: CustomTextStyles
                                                                .bodySmallGray60011),
                                                        TextSpan(
                                                            text:
                                                                "lbl_resend_again"
                                                                    .tr,
                                                            style: CustomTextStyles
                                                                .bodySmallGreenA20002)
                                                      ]),
                                                      textAlign:
                                                          TextAlign.left)))
                                        ]))),
                            CustomElevatedButton(
                                width: 165.h,
                                text: "lbl_verify".tr.toUpperCase(),
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
                                  onTapVERIFY(context);
                                },
                                alignment: Alignment.topCenter)
                          ]))
                    ]))))));
  }

  /// Navigates to the confirmPasswordScreen when the action is triggered.
  onTapVERIFY(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.confirmPasswordScreen,
    );
  }
}
