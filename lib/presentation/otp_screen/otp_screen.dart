import 'bloc/otp_bloc.dart';
import 'models/otp_model.dart';
import 'package:flutter/material.dart';
import 'package:pmis/core/app_export.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<OtpBloc>(
      create: (context) => OtpBloc(OtpState(
        otpModelObj: OtpModel(),
      ))
        ..add(OtpInitialEvent()),
      child: OtpScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<OtpBloc, OtpState>(
      builder: (context, state) {
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
                      margin: EdgeInsets.only(bottom: 1.v),
                      padding: EdgeInsets.symmetric(
                        horizontal: 93.h,
                        vertical: 119.v,
                      ),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            ImageConstant.imgGroup1005,
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SizedBox(
                            height: 133.v,
                            width: 145.h,
                            child: Stack(
                              alignment: Alignment.bottomLeft,
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgGroup307,
                                  height: 133.v,
                                  width: 121.h,
                                  alignment: Alignment.centerRight,
                                ),
                                CustomImageView(
                                  imagePath: ImageConstant.imgLocation,
                                  height: 28.v,
                                  width: 47.h,
                                  alignment: Alignment.bottomLeft,
                                  margin: EdgeInsets.only(bottom: 38.v),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 28.v),
                          Text(
                            "lbl_verification".tr,
                            style: theme.textTheme.headlineMedium,
                          ),
                          SizedBox(height: 12.v),
                          Text(
                            "msg_you_will_get_a_otp".tr,
                            style: CustomTextStyles.bodySmallGray600,
                          ),
                          Spacer(
                            flex: 49,
                          ),
                          RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: "msg_didn_t_receive_the2".tr,
                                  style: CustomTextStyles.bodySmallGray60011,
                                ),
                                TextSpan(
                                  text: "lbl_resend_again".tr,
                                  style: CustomTextStyles.bodySmallGreenA20002,
                                ),
                              ],
                            ),
                            textAlign: TextAlign.left,
                          ),
                          Spacer(
                            flex: 50,
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
}
