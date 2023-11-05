import 'bloc/login_success_bloc.dart';
import 'models/login_success_model.dart';
import 'package:flutter/material.dart';
import 'package:pmis/core/app_export.dart';

class LoginSuccessScreen extends StatelessWidget {
  const LoginSuccessScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<LoginSuccessBloc>(
      create: (context) => LoginSuccessBloc(LoginSuccessState(
        loginSuccessModelObj: LoginSuccessModel(),
      ))
        ..add(LoginSuccessInitialEvent()),
      child: LoginSuccessScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<LoginSuccessBloc, LoginSuccessState>(
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
                        horizontal: 150.h,
                        vertical: 249.v,
                      ),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            ImageConstant.imgGroup984,
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Text(
                        "lbl_welcome".tr,
                        style: theme.textTheme.headlineMedium,
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
