import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:pmis/presentation/sub_agencies_screen/models/sub_agencies_model.dart';
part 'sub_agencies_event.dart';
part 'sub_agencies_state.dart';

/// A bloc that manages the state of a SubAgencies according to the event that is dispatched to it.
class SubAgenciesBloc extends Bloc<SubAgenciesEvent, SubAgenciesState> {
  SubAgenciesBloc(SubAgenciesState initialState) : super(initialState) {
    on<SubAgenciesInitialEvent>(_onInitialize);
    on<ChangeRadioButtonEvent>(_changeRadioButton);
    on<ChangeRadioButton1Event>(_changeRadioButton1);
    on<ChangeRadioButton2Event>(_changeRadioButton2);
    on<ChangeRadioButton3Event>(_changeRadioButton3);
    on<ChangeRadioButton4Event>(_changeRadioButton4);
    on<ChangeRadioButton5Event>(_changeRadioButton5);
  }

  _changeRadioButton(
    ChangeRadioButtonEvent event,
    Emitter<SubAgenciesState> emit,
  ) {
    emit(state.copyWith(radioGroup: event.value));
  }

  _changeRadioButton1(
    ChangeRadioButton1Event event,
    Emitter<SubAgenciesState> emit,
  ) {
    emit(state.copyWith(radioGroup1: event.value));
  }

  _changeRadioButton2(
    ChangeRadioButton2Event event,
    Emitter<SubAgenciesState> emit,
  ) {
    emit(state.copyWith(radioGroup2: event.value));
  }

  _changeRadioButton3(
    ChangeRadioButton3Event event,
    Emitter<SubAgenciesState> emit,
  ) {
    emit(state.copyWith(radioGroup3: event.value));
  }

  _changeRadioButton4(
    ChangeRadioButton4Event event,
    Emitter<SubAgenciesState> emit,
  ) {
    emit(state.copyWith(radioGroup4: event.value));
  }

  _changeRadioButton5(
    ChangeRadioButton5Event event,
    Emitter<SubAgenciesState> emit,
  ) {
    emit(state.copyWith(radioGroup5: event.value));
  }

  List<String> fillRadioList() {
    return ["msg_230_viverra_tincidunt", "msg_360_viverra_tincidunt"];
  }

  List<String> fillRadioList1() {
    return ["msg_410_viverra_tincidunt", "msg_120_viverra_tincidunt"];
  }

  List<String> fillRadioList2() {
    return ["msg_230_viverra_tincidunt", "msg_360_viverra_tincidunt"];
  }

  List<String> fillRadioList3() {
    return ["msg_410_viverra_tincidunt", "msg_120_viverra_tincidunt"];
  }

  List<String> fillRadioList4() {
    return ["msg_230_viverra_tincidunt", "msg_360_viverra_tincidunt"];
  }

  List<String> fillRadioList5() {
    return ["msg_410_viverra_tincidunt", "msg_120_viverra_tincidunt"];
  }

  _onInitialize(
    SubAgenciesInitialEvent event,
    Emitter<SubAgenciesState> emit,
  ) async {
    emit(state.copyWith(
        searchController: TextEditingController(),
        radioGroup: "",
        radioGroup1: "",
        radioGroup2: "",
        radioGroup3: "",
        radioGroup4: "",
        radioGroup5: ""));
    emit(state.copyWith(
        subAgenciesModelObj: state.subAgenciesModelObj?.copyWith(
            radioList: fillRadioList(),
            radioList1: fillRadioList1(),
            radioList2: fillRadioList2(),
            radioList3: fillRadioList3(),
            radioList4: fillRadioList4(),
            radioList5: fillRadioList5())));
  }
}
