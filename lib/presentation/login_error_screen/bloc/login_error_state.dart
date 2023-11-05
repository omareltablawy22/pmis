// ignore_for_file: must_be_immutable

part of 'login_error_bloc.dart';

/// Represents the state of LoginError in the application.
class LoginErrorState extends Equatable {
  LoginErrorState({
    this.passwordController,
    this.loginErrorModelObj,
  });

  TextEditingController? passwordController;

  LoginErrorModel? loginErrorModelObj;

  @override
  List<Object?> get props => [
        passwordController,
        loginErrorModelObj,
      ];
  LoginErrorState copyWith({
    TextEditingController? passwordController,
    LoginErrorModel? loginErrorModelObj,
  }) {
    return LoginErrorState(
      passwordController: passwordController ?? this.passwordController,
      loginErrorModelObj: loginErrorModelObj ?? this.loginErrorModelObj,
    );
  }
}
