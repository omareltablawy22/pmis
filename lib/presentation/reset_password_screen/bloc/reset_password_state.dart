// ignore_for_file: must_be_immutable

part of 'reset_password_bloc.dart';

/// Represents the state of ResetPassword in the application.
class ResetPasswordState extends Equatable {
  ResetPasswordState({
    this.emailController,
    this.resetPasswordModelObj,
  });

  TextEditingController? emailController;

  ResetPasswordModel? resetPasswordModelObj;

  @override
  List<Object?> get props => [
        emailController,
        resetPasswordModelObj,
      ];
  ResetPasswordState copyWith({
    TextEditingController? emailController,
    ResetPasswordModel? resetPasswordModelObj,
  }) {
    return ResetPasswordState(
      emailController: emailController ?? this.emailController,
      resetPasswordModelObj:
          resetPasswordModelObj ?? this.resetPasswordModelObj,
    );
  }
}
