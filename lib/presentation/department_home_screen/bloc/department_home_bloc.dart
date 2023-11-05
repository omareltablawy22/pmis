import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/userprofileview_item_model.dart';
import 'package:pmis/presentation/department_home_screen/models/department_home_model.dart';
part 'department_home_event.dart';
part 'department_home_state.dart';

/// A bloc that manages the state of a DepartmentHome according to the event that is dispatched to it.
class DepartmentHomeBloc
    extends Bloc<DepartmentHomeEvent, DepartmentHomeState> {
  DepartmentHomeBloc(DepartmentHomeState initialState) : super(initialState) {
    on<DepartmentHomeInitialEvent>(_onInitialize);
  }

  _onInitialize(
    DepartmentHomeInitialEvent event,
    Emitter<DepartmentHomeState> emit,
  ) async {
    emit(state.copyWith(
        departmentHomeModelObj: state.departmentHomeModelObj?.copyWith(
            userprofileviewItemList: fillUserprofileviewItemList())));
  }

  List<UserprofileviewItemModel> fillUserprofileviewItemList() {
    return [
      UserprofileviewItemModel(
          userName: "Est lobortis curabitur ",
          userDescription: "Vel consequat ",
          userAge: "03",
          userLocation: "Vel consequat "),
      UserprofileviewItemModel(
          userName: "Est lobortis curabitur ",
          userDescription: "Vel consequat ",
          userAge: "03",
          userLocation: "Vel consequat "),
      UserprofileviewItemModel(
          userName: "Est lobortis curabitur ",
          userDescription: "Vel consequat ",
          userAge: "03",
          userLocation: "Vel consequat "),
      UserprofileviewItemModel(
          userName: "Est lobortis curabitur ",
          userDescription: "Vel consequat ",
          userAge: "03",
          userLocation: "Vel consequat "),
      UserprofileviewItemModel(
          userName: "Est lobortis curabitur ",
          userDescription: "Vel consequat ",
          userAge: "03",
          userLocation: "Vel consequat "),
      UserprofileviewItemModel(
          userName: "Est lobortis curabitur ",
          userDescription: "Vel consequat ",
          userAge: "03",
          userLocation: "Vel consequat "),
      UserprofileviewItemModel(
          userName: "Est lobortis curabitur ",
          userDescription: "Vel consequat ",
          userAge: "03",
          userLocation: "Vel consequat "),
      UserprofileviewItemModel(
          userName: "Est lobortis curabitur ",
          userDescription: "Vel consequat ",
          userAge: "03",
          userLocation: "Vel consequat "),
      UserprofileviewItemModel(
          userName: "Est lobortis curabitur ",
          userDescription: "Vel consequat ",
          userAge: "03",
          userLocation: "Vel consequat "),
      UserprofileviewItemModel(
          userName: "Est lobortis curabitur ",
          userDescription: "Vel consequat ",
          userAge: "03",
          userLocation: "Vel consequat "),
      UserprofileviewItemModel(
          userName: "Est lobortis curabitur ",
          userDescription: "Vel consequat ",
          userAge: "03",
          userLocation: "Vel consequat ")
    ];
  }
}
