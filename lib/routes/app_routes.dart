import 'package:flutter/material.dart';
import 'package:pmis/presentation/splash_screen/splash_screen.dart';
import 'package:pmis/presentation/intro_screen/intro_screen.dart';
import 'package:pmis/presentation/login_screen/login_screen.dart';
import 'package:pmis/presentation/login_error_screen/login_error_screen.dart';
import 'package:pmis/presentation/login_success_screen/login_success_screen.dart';
import 'package:pmis/presentation/loading_screen/loading_screen.dart';
import 'package:pmis/presentation/home_screen_old_screen/home_screen_old_screen.dart';
import 'package:pmis/presentation/home_screen/home_screen.dart';
import 'package:pmis/presentation/departments_screen/departments_screen.dart';
import 'package:pmis/presentation/settings_screen/settings_screen.dart';
import 'package:pmis/presentation/reset_password_screen/reset_password_screen.dart';
import 'package:pmis/presentation/verify_screen/verify_screen.dart';
import 'package:pmis/presentation/sub_agencies_screen/sub_agencies_screen.dart';
import 'package:pmis/presentation/department_home_screen/department_home_screen.dart';
import 'package:pmis/presentation/otp_screen_old_screen/otp_screen_old_screen.dart';
import 'package:pmis/presentation/otp_screen/otp_screen.dart';
import 'package:pmis/presentation/administrators_screen/administrators_screen.dart';
import 'package:pmis/presentation/prject_home_screen/prject_home_screen.dart';
import 'package:pmis/presentation/confirm_password_screen/confirm_password_screen.dart';
import 'package:pmis/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String splashScreen = '/splash_screen';

  static const String introScreen = '/intro_screen';

  static const String loginScreen = '/login_screen';

  static const String loginErrorScreen = '/login_error_screen';

  static const String loginSuccessScreen = '/login_success_screen';

  static const String loadingScreen = '/loading_screen';

  static const String homeScreenOldScreen = '/home_screen_old_screen';

  static const String homeScreen = '/home_screen';

  static const String departmentsScreen = '/departments_screen';

  static const String settingsScreen = '/settings_screen';

  static const String resetPasswordScreen = '/reset_password_screen';

  static const String verifyScreen = '/verify_screen';

  static const String subAgenciesScreen = '/sub_agencies_screen';

  static const String departmentHomeScreen = '/department_home_screen';

  static const String otpScreenOldScreen = '/otp_screen_old_screen';

  static const String otpScreen = '/otp_screen';

  static const String administratorsScreen = '/administrators_screen';

  static const String prjectHomeScreen = '/prject_home_screen';

  static const String confirmPasswordScreen = '/confirm_password_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        splashScreen: SplashScreen.builder,
        introScreen: IntroScreen.builder,
        loginScreen: LoginScreen.builder,
        loginErrorScreen: LoginErrorScreen.builder,
        loginSuccessScreen: LoginSuccessScreen.builder,
        loadingScreen: LoadingScreen.builder,
        homeScreenOldScreen: HomeScreenOldScreen.builder,
        homeScreen: HomeScreen.builder,
        departmentsScreen: DepartmentsScreen.builder,
        settingsScreen: SettingsScreen.builder,
        resetPasswordScreen: ResetPasswordScreen.builder,
        verifyScreen: VerifyScreen.builder,
        subAgenciesScreen: SubAgenciesScreen.builder,
        departmentHomeScreen: DepartmentHomeScreen.builder,
        otpScreenOldScreen: OtpScreenOldScreen.builder,
        otpScreen: OtpScreen.builder,
        administratorsScreen: AdministratorsScreen.builder,
        prjectHomeScreen: PrjectHomeScreen.builder,
        confirmPasswordScreen: ConfirmPasswordScreen.builder,
        appNavigationScreen: AppNavigationScreen.builder,
        initialRoute: SplashScreen.builder
      };
}
