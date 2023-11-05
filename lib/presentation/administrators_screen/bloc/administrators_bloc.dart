import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:pmis/presentation/administrators_screen/models/administrators_model.dart';
part 'administrators_event.dart';
part 'administrators_state.dart';

/// A bloc that manages the state of a Administrators according to the event that is dispatched to it.
class AdministratorsBloc
    extends Bloc<AdministratorsEvent, AdministratorsState> {
  AdministratorsBloc(AdministratorsState initialState) : super(initialState) {
    on<AdministratorsInitialEvent>(_onInitialize);
    on<ChangeRadioButtonEvent>(_changeRadioButton);
    on<ChangeRadioButton1Event>(_changeRadioButton1);
  }

  _changeRadioButton(
    ChangeRadioButtonEvent event,
    Emitter<AdministratorsState> emit,
  ) {
    emit(state.copyWith(numberValue: event.value));
  }

  _changeRadioButton1(
    ChangeRadioButton1Event event,
    Emitter<AdministratorsState> emit,
  ) {
    emit(state.copyWith(englishText: event.value));
  }

  List<String> fillRadioList() {
    return ["msg_230_viverra_tincidunt", "msg_360_viverra_tincidunt"];
  }

  List<String> fillRadioList1() {
    return ["msg_410_viverra_tincidunt", "msg_120_viverra_tincidunt"];
  }

  _onInitialize(
    AdministratorsInitialEvent event,
    Emitter<AdministratorsState> emit,
  ) async {
    emit(state.copyWith(
        searchController: TextEditingController(),
        numberValue: "",
        englishText: ""));
    emit(state.copyWith(
        administratorsModelObj: state.administratorsModelObj?.copyWith(
            radioList: fillRadioList(), radioList1: fillRadioList1())));
  }
}
