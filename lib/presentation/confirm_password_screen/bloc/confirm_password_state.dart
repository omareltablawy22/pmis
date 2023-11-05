// ignore_for_file: must_be_immutable

part of 'confirm_password_bloc.dart';

/// Represents the state of ConfirmPassword in the application.
class ConfirmPasswordState extends Equatable {
  ConfirmPasswordState({this.confirmPasswordModelObj});

  ConfirmPasswordModel? confirmPasswordModelObj;

  @override
  List<Object?> get props => [
        confirmPasswordModelObj,
      ];
  ConfirmPasswordState copyWith(
      {ConfirmPasswordModel? confirmPasswordModelObj}) {
    return ConfirmPasswordState(
      confirmPasswordModelObj:
          confirmPasswordModelObj ?? this.confirmPasswordModelObj,
    );
  }
}
