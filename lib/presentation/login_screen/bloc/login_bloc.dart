import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:pmis/presentation/login_screen/models/login_model.dart';
import 'package:pmis/data/models/loginDeviceAuth/post_login_device_auth_resp.dart';
import 'package:pmis/data/models/loginDeviceAuth/post_login_device_auth_req.dart';
import 'dart:async';
import 'package:pmis/data/repository/repository.dart';
part 'login_event.dart';
part 'login_state.dart';

/// A bloc that manages the state of a Login according to the event that is dispatched to it.
class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc(LoginState initialState) : super(initialState) {
    on<LoginInitialEvent>(_onInitialize);
    on<ChangeSwitchEvent>(_changeSwitch);
    on<CreateLoginEvent>(_callLoginDeviceAuth);
  }

  final _repository = Repository();

  var postLoginDeviceAuthResp = PostLoginDeviceAuthResp();

  _changeSwitch(
    ChangeSwitchEvent event,
    Emitter<LoginState> emit,
  ) {
    emit(state.copyWith(isSelectedSwitch: event.value));
  }

  _onInitialize(
    LoginInitialEvent event,
    Emitter<LoginState> emit,
  ) async {
    emit(state.copyWith(
        priceController: TextEditingController(),
        passwordController: TextEditingController(),
        isSelectedSwitch: false));
  }

  /// Calls [{{Test_URL}}/auth/login] with the provided event and emits the state.
  ///
  /// The [CreateLoginEvent] parameter is used for handling event data
  /// The [emit] parameter is used for emitting the state
  ///
  /// Throws an error if an error occurs during the API call process.
  FutureOr<void> _callLoginDeviceAuth(
    CreateLoginEvent event,
    Emitter<LoginState> emit,
  ) async {
    var postLoginDeviceAuthReq = PostLoginDeviceAuthReq(
      username: state.priceController?.text ?? '',
      password: state.passwordController?.text ?? '',
    );
    await _repository.loginDeviceAuth(
      headers: {
        'Content-type': 'application/json',
      },
      requestData: postLoginDeviceAuthReq.toJson(),
    ).then((value) async {
      postLoginDeviceAuthResp = value;
      _onLoginDeviceAuthSuccess(value, emit);
      event.onCreateLoginEventSuccess?.call();
    }).onError((error, stackTrace) {
      //implement error call
      _onLoginDeviceAuthError();
      event.onCreateLoginEventError?.call();
    });
  }

  void _onLoginDeviceAuthSuccess(
    PostLoginDeviceAuthResp resp,
    Emitter<LoginState> emit,
  ) {
    PrefUtils().setID(resp.user?.id ?? 0);
    PrefUtils().setUsername(resp.user?.username ?? '');
    PrefUtils().setGroupId(resp.user?.groupId ?? 0);
    PrefUtils().setAccessToken(resp.accessToken ?? '');
    PrefUtils().setTokentype(resp.tokenType ?? '');
    PrefUtils().setExpiresIn(resp.expiresIn ?? 0);
    emit(
      state.copyWith(
        loginModelObj: state.loginModelObj?.copyWith(),
      ),
    );
  }

  void _onLoginDeviceAuthError() {
    //implement error method body...
  }
}
