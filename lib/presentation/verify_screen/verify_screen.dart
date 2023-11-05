import 'bloc/verify_bloc.dart';
import 'models/verify_model.dart';
import 'package:flutter/material.dart';
import 'package:pmis/core/app_export.dart';

class VerifyScreen extends StatelessWidget {
  const VerifyScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<VerifyBloc>(
      create: (context) => VerifyBloc(VerifyState(
        verifyModelObj: VerifyModel(),
      ))
        ..add(VerifyInitialEvent()),
      child: VerifyScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<VerifyBloc, VerifyState>(
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
                        horizontal: 125.h,
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
                          Align(
                            alignment: Alignment.centerRight,
                            child: Container(
                              height: 133.v,
                              width: 128.h,
                              margin: EdgeInsets.only(right: 13.h),
                              child: Stack(
                                alignment: Alignment.bottomRight,
                                children: [
                                  CustomImageView(
                                    imagePath: ImageConstant.imgGroup307,
                                    height: 133.v,
                                    width: 121.h,
                                    alignment: Alignment.centerLeft,
                                  ),
                                  CustomImageView(
                                    imagePath: ImageConstant.imgLocation,
                                    height: 28.v,
                                    width: 47.h,
                                    alignment: Alignment.bottomRight,
                                    margin: EdgeInsets.only(bottom: 9.v),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: 28.v),
                          Text(
                            "lbl_verification".tr,
                            style: theme.textTheme.headlineMedium,
                          ),
                          SizedBox(height: 12.v),
                          SizedBox(
                            width: 176.h,
                            child: Text(
                              "msg_we_will_send_you".tr,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                              style: CustomTextStyles.bodySmallGray600.copyWith(
                                height: 1.17,
                              ),
                            ),
                          ),
                          SizedBox(height: 12.v),
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
