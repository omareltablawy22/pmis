// ignore_for_file: must_be_immutable

part of 'login_bloc.dart';

/// Represents the state of Login in the application.
class LoginState extends Equatable {
  LoginState({
    this.priceController,
    this.passwordController,
    this.isSelectedSwitch = false,
    this.loginModelObj,
  });

  TextEditingController? priceController;

  TextEditingController? passwordController;

  LoginModel? loginModelObj;

  bool isSelectedSwitch;

  @override
  List<Object?> get props => [
        priceController,
        passwordController,
        isSelectedSwitch,
        loginModelObj,
      ];
  LoginState copyWith({
    TextEditingController? priceController,
    TextEditingController? passwordController,
    bool? isSelectedSwitch,
    LoginModel? loginModelObj,
  }) {
    return LoginState(
      priceController: priceController ?? this.priceController,
      passwordController: passwordController ?? this.passwordController,
      isSelectedSwitch: isSelectedSwitch ?? this.isSelectedSwitch,
      loginModelObj: loginModelObj ?? this.loginModelObj,
    );
  }
}
