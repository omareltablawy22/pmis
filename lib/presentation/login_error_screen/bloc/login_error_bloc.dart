import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:pmis/presentation/login_error_screen/models/login_error_model.dart';
part 'login_error_event.dart';
part 'login_error_state.dart';

/// A bloc that manages the state of a LoginError according to the event that is dispatched to it.
class LoginErrorBloc extends Bloc<LoginErrorEvent, LoginErrorState> {
  LoginErrorBloc(LoginErrorState initialState) : super(initialState) {
    on<LoginErrorInitialEvent>(_onInitialize);
  }

  _onInitialize(
    LoginErrorInitialEvent event,
    Emitter<LoginErrorState> emit,
  ) async {
    emit(state.copyWith(
      passwordController: TextEditingController(),
    ));
  }
}
