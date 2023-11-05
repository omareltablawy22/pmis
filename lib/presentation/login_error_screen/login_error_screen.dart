import 'bloc/login_error_bloc.dart';
import 'models/login_error_model.dart';
import 'package:flutter/material.dart';
import 'package:pmis/core/app_export.dart';
import 'package:pmis/core/utils/validation_functions.dart';
import 'package:pmis/widgets/custom_text_form_field.dart';

class LoginErrorScreen extends StatelessWidget {
  LoginErrorScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<LoginErrorBloc>(
      create: (context) => LoginErrorBloc(LoginErrorState(
        loginErrorModelObj: LoginErrorModel(),
      ))
        ..add(LoginErrorInitialEvent()),
      child: LoginErrorScreen(),
    );
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
                    margin: EdgeInsets.only(left: 1.h),
                    padding: EdgeInsets.symmetric(
                      horizontal: 81.h,
                      vertical: 239.v,
                    ),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          ImageConstant.imgGroup988,
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          "lbl_welcome".tr,
                          style: theme.textTheme.headlineMedium,
                        ),
                        SizedBox(height: 6.v),
                        BlocSelector<LoginErrorBloc, LoginErrorState,
                            TextEditingController?>(
                          selector: (state) => state.passwordController,
                          builder: (context, passwordController) {
                            return CustomTextFormField(
                              controller: passwordController,
                              hintText: "msg_the_password_you".tr,
                              textInputAction: TextInputAction.done,
                              textInputType: TextInputType.visiblePassword,
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
                            );
                          },
                        ),
                        SizedBox(height: 6.v),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
