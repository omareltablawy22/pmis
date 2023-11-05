import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:pmis/presentation/login_success_screen/models/login_success_model.dart';
part 'login_success_event.dart';
part 'login_success_state.dart';

/// A bloc that manages the state of a LoginSuccess according to the event that is dispatched to it.
class LoginSuccessBloc extends Bloc<LoginSuccessEvent, LoginSuccessState> {
  LoginSuccessBloc(LoginSuccessState initialState) : super(initialState) {
    on<LoginSuccessInitialEvent>(_onInitialize);
  }

  _onInitialize(
    LoginSuccessInitialEvent event,
    Emitter<LoginSuccessState> emit,
  ) async {}
}
