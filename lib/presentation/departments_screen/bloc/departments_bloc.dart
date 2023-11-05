import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/departmentsscreen_item_model.dart';
import 'package:pmis/presentation/departments_screen/models/departments_model.dart';
part 'departments_event.dart';
part 'departments_state.dart';

/// A bloc that manages the state of a Departments according to the event that is dispatched to it.
class DepartmentsBloc extends Bloc<DepartmentsEvent, DepartmentsState> {
  DepartmentsBloc(DepartmentsState initialState) : super(initialState) {
    on<DepartmentsInitialEvent>(_onInitialize);
    on<ChangeRadioButtonEvent>(_changeRadioButton);
    on<ChangeRadioButton1Event>(_changeRadioButton1);
    on<ChangeRadioButton2Event>(_changeRadioButton2);
    on<ChangeRadioButton3Event>(_changeRadioButton3);
    on<ChangeRadioButton4Event>(_changeRadioButton4);
    on<ChangeRadioButton5Event>(_changeRadioButton5);
  }

  _changeRadioButton(
    ChangeRadioButtonEvent event,
    Emitter<DepartmentsState> emit,
  ) {
    emit(state.copyWith(radioGroup: event.value));
  }

  _changeRadioButton1(
    ChangeRadioButton1Event event,
    Emitter<DepartmentsState> emit,
  ) {
    emit(state.copyWith(radioGroup1: event.value));
  }

  _changeRadioButton2(
    ChangeRadioButton2Event event,
    Emitter<DepartmentsState> emit,
  ) {
    emit(state.copyWith(radioGroup2: event.value));
  }

  _changeRadioButton3(
    ChangeRadioButton3Event event,
    Emitter<DepartmentsState> emit,
  ) {
    emit(state.copyWith(radioGroup3: event.value));
  }

  _changeRadioButton4(
    ChangeRadioButton4Event event,
    Emitter<DepartmentsState> emit,
  ) {
    emit(state.copyWith(forty: event.value));
  }

  _changeRadioButton5(
    ChangeRadioButton5Event event,
    Emitter<DepartmentsState> emit,
  ) {
    emit(state.copyWith(radioGroup4: event.value));
  }

  List<DepartmentsscreenItemModel> fillDepartmentsscreenItemList() {
    return [
      DepartmentsscreenItemModel(
          image: ImageConstant.imgGroup1289,
          path: ImageConstant.imgPath1676,
          path1: ImageConstant.imgPath1677,
          path2: ImageConstant.imgPath1678,
          path3: ImageConstant.imgPath1679,
          path4: ImageConstant.imgPath1680,
          path5: ImageConstant.imgPath1681,
          path6: ImageConstant.imgPath1682,
          path7: ImageConstant.imgPath1683,
          path8: ImageConstant.imgPath1684,
          path9: ImageConstant.imgPath1685,
          path10: ImageConstant.imgPath1686,
          path11: ImageConstant.imgPath1687,
          path12: ImageConstant.imgPath1688,
          path13: ImageConstant.imgPath1689,
          path14: ImageConstant.imgPath1690,
          path15: ImageConstant.imgPath1691,
          path16: ImageConstant.imgPath1692,
          path17: ImageConstant.imgPath1693,
          path18: ImageConstant.imgPath1694,
          path19: ImageConstant.imgPath1695,
          path20: ImageConstant.imgPath1696,
          path21: ImageConstant.imgPath1697,
          path22: ImageConstant.imgPath1698,
          path23: ImageConstant.imgPath1699,
          path24: ImageConstant.imgPath1700,
          path25: ImageConstant.imgPath1701,
          path26: ImageConstant.imgPath1702,
          path27: ImageConstant.imgPath1703,
          path28: ImageConstant.imgPath1704,
          path29: ImageConstant.imgPath1705),
      DepartmentsscreenItemModel(
          image: ImageConstant.imgGroup1289,
          path: ImageConstant.imgPath1709,
          path1: ImageConstant.imgPath1677,
          path2: ImageConstant.imgPath1678,
          path3: ImageConstant.imgPath1712,
          path4: ImageConstant.imgPath1713,
          path5: ImageConstant.imgPath1714,
          path6: ImageConstant.imgPath1682,
          path7: ImageConstant.imgPath1716,
          path8: ImageConstant.imgPath1684,
          path9: ImageConstant.imgPath1718,
          path10: ImageConstant.imgPath1686,
          path11: ImageConstant.imgPath1720,
          path12: ImageConstant.imgPath1688,
          path13: ImageConstant.imgPath1722,
          path14: ImageConstant.imgPath1723,
          path15: ImageConstant.imgPath1723,
          path16: ImageConstant.imgPath1692,
          path17: ImageConstant.imgPath1693,
          path18: ImageConstant.imgPath1694,
          path19: ImageConstant.imgPath1728,
          path20: ImageConstant.imgPath1729,
          path21: ImageConstant.imgPath1697,
          path22: ImageConstant.imgPath1698,
          path23: ImageConstant.imgPath1699,
          path24: ImageConstant.imgPath1700,
          path25: ImageConstant.imgPath1734,
          path29: ImageConstant.imgPath1705),
      DepartmentsscreenItemModel(
          image: ImageConstant.imgGroup1643,
          path: ImageConstant.imgPath1851,
          path1: ImageConstant.imgPath1852,
          path2: ImageConstant.imgPath1853,
          path3: ImageConstant.imgPath1854,
          path4: ImageConstant.imgPath1855,
          path5: ImageConstant.imgPath1856,
          path6: ImageConstant.imgPath1857,
          path7: ImageConstant.imgPath1858,
          path8: ImageConstant.imgPath1859,
          path9: ImageConstant.imgPath1860,
          path10: ImageConstant.imgPath1861,
          path11: ImageConstant.imgPath1862,
          path12: ImageConstant.imgPath1863,
          path13: ImageConstant.imgPath1864,
          path14: ImageConstant.imgPath1864,
          path15: ImageConstant.imgPath1866,
          path16: ImageConstant.imgPath1867,
          path17: ImageConstant.imgPath1868,
          path18: ImageConstant.imgPath1869,
          path19: ImageConstant.imgPath1870,
          path20: ImageConstant.imgPath1871,
          path21: ImageConstant.imgPath1872,
          path22: ImageConstant.imgPath1873,
          path23: ImageConstant.imgPath1874),
      DepartmentsscreenItemModel(
          image: ImageConstant.imgGroup1985,
          path: ImageConstant.imgPath1991,
          path1: ImageConstant.imgPath1852,
          path2: ImageConstant.imgPath1993,
          path3: ImageConstant.imgPath1994,
          path4: ImageConstant.imgPath1855,
          path5: ImageConstant.imgPath1856,
          path6: ImageConstant.imgPath1857,
          path7: ImageConstant.imgPath1998,
          path8: ImageConstant.imgPath1999,
          path9: ImageConstant.imgPath1860,
          path10: ImageConstant.imgPath1861,
          path11: ImageConstant.imgPath2002,
          path12: ImageConstant.imgPath2003,
          path13: ImageConstant.imgPath1864,
          path14: ImageConstant.imgPath1864,
          path15: ImageConstant.imgPath1866,
          path16: ImageConstant.imgPath2007,
          path17: ImageConstant.imgPath1868,
          path18: ImageConstant.imgPath1869,
          path19: ImageConstant.imgPath2010,
          path20: ImageConstant.imgPath1871,
          path21: ImageConstant.imgPath1872,
          path22: ImageConstant.imgPath2013,
          path23: ImageConstant.imgPath1874),
      DepartmentsscreenItemModel(
          image: ImageConstant.imgGroup2327,
          path: ImageConstant.imgPath1991,
          path1: ImageConstant.imgPath1852,
          path2: ImageConstant.imgPath2133,
          path3: ImageConstant.imgPath2134,
          path4: ImageConstant.imgPath1855,
          path5: ImageConstant.imgPath2136,
          path6: ImageConstant.imgPath1857,
          path7: ImageConstant.imgPath2138,
          path8: ImageConstant.imgPath1999,
          path9: ImageConstant.imgPath2140,
          path10: ImageConstant.imgPath1861,
          path11: ImageConstant.imgPath1862,
          path12: ImageConstant.imgPath2143,
          path13: ImageConstant.imgPath1864,
          path14: ImageConstant.imgPath2145,
          path15: ImageConstant.imgPath2146,
          path16: ImageConstant.imgPath2007,
          path17: ImageConstant.imgPath2148,
          path18: ImageConstant.imgPath2149,
          path19: ImageConstant.imgPath2150,
          path20: ImageConstant.imgPath1871,
          path21: ImageConstant.imgPath2152,
          path22: ImageConstant.imgPath1873,
          path23: ImageConstant.imgPath2154),
      DepartmentsscreenItemModel(
          image: ImageConstant.imgGroup2669,
          path: ImageConstant.imgPath2271,
          path1: ImageConstant.imgPath1852,
          path2: ImageConstant.imgPath2273,
          path3: ImageConstant.imgPath1854,
          path4: ImageConstant.imgPath1855,
          path5: ImageConstant.imgPath2276,
          path6: ImageConstant.imgPath1857,
          path7: ImageConstant.imgPath2138,
          path8: ImageConstant.imgPath1999,
          path9: ImageConstant.imgPath2140,
          path10: ImageConstant.imgPath1861,
          path11: ImageConstant.imgPath2002,
          path12: ImageConstant.imgPath2143,
          path13: ImageConstant.imgPath2145,
          path14: ImageConstant.imgPath2285,
          path15: ImageConstant.imgPath1866,
          path16: ImageConstant.imgPath2007,
          path17: ImageConstant.imgPath2148,
          path18: ImageConstant.imgPath2149,
          path19: ImageConstant.imgPath1870,
          path20: ImageConstant.imgPath1871,
          path21: ImageConstant.imgPath1872,
          path22: ImageConstant.imgPath1873,
          path23: ImageConstant.imgPath1874)
    ];
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
    DepartmentsInitialEvent event,
    Emitter<DepartmentsState> emit,
  ) async {
    emit(state.copyWith(
        radioGroup: "",
        radioGroup1: "",
        radioGroup2: "",
        radioGroup3: "",
        forty: "",
        radioGroup4: ""));
    emit(state.copyWith(
        departmentsModelObj: state.departmentsModelObj?.copyWith(
            departmentsscreenItemList: fillDepartmentsscreenItemList(),
            radioList: fillRadioList(),
            radioList1: fillRadioList1(),
            radioList2: fillRadioList2(),
            radioList3: fillRadioList3(),
            radioList4: fillRadioList4(),
            radioList5: fillRadioList5())));
  }
}
