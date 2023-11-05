import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:pmis/presentation/confirm_password_screen/models/confirm_password_model.dart';
part 'confirm_password_event.dart';
part 'confirm_password_state.dart';

/// A bloc that manages the state of a ConfirmPassword according to the event that is dispatched to it.
class ConfirmPasswordBloc
    extends Bloc<ConfirmPasswordEvent, ConfirmPasswordState> {
  ConfirmPasswordBloc(ConfirmPasswordState initialState) : super(initialState) {
    on<ConfirmPasswordInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ConfirmPasswordInitialEvent event,
    Emitter<ConfirmPasswordState> emit,
  ) async {}
}
