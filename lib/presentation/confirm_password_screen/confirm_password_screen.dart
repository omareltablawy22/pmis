import 'bloc/confirm_password_bloc.dart';
import 'models/confirm_password_model.dart';
import 'package:flutter/material.dart';
import 'package:pmis/core/app_export.dart';

class ConfirmPasswordScreen extends StatelessWidget {
  const ConfirmPasswordScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<ConfirmPasswordBloc>(
      create: (context) => ConfirmPasswordBloc(ConfirmPasswordState(
        confirmPasswordModelObj: ConfirmPasswordModel(),
      ))
        ..add(ConfirmPasswordInitialEvent()),
      child: ConfirmPasswordScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<ConfirmPasswordBloc, ConfirmPasswordState>(
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
                      padding: EdgeInsets.symmetric(
                        horizontal: 136.h,
                        vertical: 196.v,
                      ),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            ImageConstant.imgGroup987,
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            "lbl_verification".tr,
                            style: theme.textTheme.headlineMedium,
                          ),
                          SizedBox(height: 11.v),
                          Text(
                            "msg_enter_new_password".tr,
                            style: CustomTextStyles.bodySmallGray600,
                          ),
                          SizedBox(height: 94.v),
                          Text(
                            "msg_confirm_password".tr,
                            style: CustomTextStyles.bodySmallGray600,
                          ),
                          SizedBox(height: 94.v),
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
