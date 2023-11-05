import 'bloc/intro_bloc.dart';
import 'models/intro_model.dart';
import 'package:flutter/material.dart';
import 'package:pmis/core/app_export.dart';
import 'package:pmis/widgets/custom_elevated_button.dart';
import 'package:pmis/widgets/custom_outlined_button.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<IntroBloc>(
        create: (context) => IntroBloc(IntroState(introModelObj: IntroModel()))
          ..add(IntroInitialEvent()),
        child: IntroScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return BlocBuilder<IntroBloc, IntroState>(builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              extendBody: true,
              extendBodyBehindAppBar: true,
              body: Container(
                  width: mediaQueryData.size.width,
                  height: mediaQueryData.size.height,
                  decoration: BoxDecoration(
                      color: theme.colorScheme.onPrimary,
                      image: DecorationImage(
                          image: AssetImage(ImageConstant.imgIntroScreen),
                          fit: BoxFit.cover)),
                  child: Container(
                      width: double.maxFinite,
                      padding: EdgeInsets.symmetric(vertical: 44.v),
                      child: Column(mainAxisSize: MainAxisSize.min, children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgGroup231Onprimary,
                            height: 84.v,
                            width: 126.h),
                        Spacer(flex: 67),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                                padding: EdgeInsets.only(left: 5.h),
                                child: Text("lbl_quam_nisl".tr,
                                    style: theme.textTheme.titleLarge))),
                        SizedBox(height: 10.v),
                        SizedBox(
                            width: 235.h,
                            child: Text("msg_vivamus_eget_aliquam".tr,
                                maxLines: 7,
                                overflow: TextOverflow.ellipsis,
                                style: theme.textTheme.bodyMedium!
                                    .copyWith(height: 1.21))),
                        SizedBox(height: 66.v),
                        CustomElevatedButton(
                            width: 246.h,
                            text: "lbl_login".tr.toUpperCase(),
                            buttonStyle: CustomButtonStyles.fillPrimary,
                            onPressed: () {
                              onTapLogin(context);
                            }),
                        SizedBox(height: 19.v),
                        CustomOutlinedButton(
                            height: 49.v,
                            width: 246.h,
                            text: "lbl_registration".tr.toUpperCase(),
                            buttonStyle: CustomButtonStyles.outlinePrimary,
                            buttonTextStyle:
                                CustomTextStyles.titleSmallPrimary),
                        Spacer(flex: 32)
                      ])))));
    });
  }

  /// Navigates to the loginScreen when the action is triggered.
  onTapLogin(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.loginScreen,
    );
  }
}
