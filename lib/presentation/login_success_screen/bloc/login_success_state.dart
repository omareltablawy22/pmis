// ignore_for_file: must_be_immutable

part of 'login_success_bloc.dart';

/// Represents the state of LoginSuccess in the application.
class LoginSuccessState extends Equatable {
  LoginSuccessState({this.loginSuccessModelObj});

  LoginSuccessModel? loginSuccessModelObj;

  @override
  List<Object?> get props => [
        loginSuccessModelObj,
      ];
  LoginSuccessState copyWith({LoginSuccessModel? loginSuccessModelObj}) {
    return LoginSuccessState(
      loginSuccessModelObj: loginSuccessModelObj ?? this.loginSuccessModelObj,
    );
  }
}
