import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:pmis/presentation/verify_screen/models/verify_model.dart';
part 'verify_event.dart';
part 'verify_state.dart';

/// A bloc that manages the state of a Verify according to the event that is dispatched to it.
class VerifyBloc extends Bloc<VerifyEvent, VerifyState> {
  VerifyBloc(VerifyState initialState) : super(initialState) {
    on<VerifyInitialEvent>(_onInitialize);
  }

  _onInitialize(
    VerifyInitialEvent event,
    Emitter<VerifyState> emit,
  ) async {}
}
