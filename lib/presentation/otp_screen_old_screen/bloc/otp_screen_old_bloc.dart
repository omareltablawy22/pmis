import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:pmis/presentation/otp_screen_old_screen/models/otp_screen_old_model.dart';
part 'otp_screen_old_event.dart';
part 'otp_screen_old_state.dart';

/// A bloc that manages the state of a OtpScreenOld according to the event that is dispatched to it.
class OtpScreenOldBloc extends Bloc<OtpScreenOldEvent, OtpScreenOldState> {
  OtpScreenOldBloc(OtpScreenOldState initialState) : super(initialState) {
    on<OtpScreenOldInitialEvent>(_onInitialize);
  }

  _onInitialize(
    OtpScreenOldInitialEvent event,
    Emitter<OtpScreenOldState> emit,
  ) async {
    emit(state.copyWith(passwordController: TextEditingController()));
  }
}
