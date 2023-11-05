// ignore_for_file: must_be_immutable

part of 'otp_screen_old_bloc.dart';

/// Represents the state of OtpScreenOld in the application.
class OtpScreenOldState extends Equatable {
  OtpScreenOldState({
    this.passwordController,
    this.otpScreenOldModelObj,
  });

  TextEditingController? passwordController;

  OtpScreenOldModel? otpScreenOldModelObj;

  @override
  List<Object?> get props => [
        passwordController,
        otpScreenOldModelObj,
      ];
  OtpScreenOldState copyWith({
    TextEditingController? passwordController,
    OtpScreenOldModel? otpScreenOldModelObj,
  }) {
    return OtpScreenOldState(
      passwordController: passwordController ?? this.passwordController,
      otpScreenOldModelObj: otpScreenOldModelObj ?? this.otpScreenOldModelObj,
    );
  }
}
