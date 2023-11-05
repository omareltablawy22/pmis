import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:pmis/presentation/home_screen/models/home_model.dart';
part 'home_event.dart';
part 'home_state.dart';

/// A bloc that manages the state of a Home according to the event that is dispatched to it.
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc(HomeState initialState) : super(initialState) {
    on<HomeInitialEvent>(_onInitialize);
    on<ChangeRadioButtonEvent>(_changeRadioButton);
    on<ChangeRadioButton1Event>(_changeRadioButton1);
    on<ChangeRadioButton2Event>(_changeRadioButton2);
    on<ChangeRadioButton3Event>(_changeRadioButton3);
  }

  _changeRadioButton(
    ChangeRadioButtonEvent event,
    Emitter<HomeState> emit,
  ) {
    emit(state.copyWith(radioGroup: event.value));
  }

  _changeRadioButton1(
    ChangeRadioButton1Event event,
    Emitter<HomeState> emit,
  ) {
    emit(state.copyWith(radioGroup1: event.value));
  }

  _changeRadioButton2(
    ChangeRadioButton2Event event,
    Emitter<HomeState> emit,
  ) {
    emit(state.copyWith(radioGroup2: event.value));
  }

  _changeRadioButton3(
    ChangeRadioButton3Event event,
    Emitter<HomeState> emit,
  ) {
    emit(state.copyWith(radioGroup3: event.value));
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

  _onInitialize(
    HomeInitialEvent event,
    Emitter<HomeState> emit,
  ) async {
    emit(state.copyWith(
        radioGroup: "", radioGroup1: "", radioGroup2: "", radioGroup3: ""));
    emit(state.copyWith(
        homeModelObj: state.homeModelObj?.copyWith(
            radioList: fillRadioList(),
            radioList1: fillRadioList1(),
            radioList2: fillRadioList2(),
            radioList3: fillRadioList3())));
  }
}
