// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'departmentsscreen_item_model.dart';

/// This class defines the variables used in the [departments_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class DepartmentsModel extends Equatable {
  DepartmentsModel({
    this.departmentsscreenItemList = const [],
    this.radioList = const [],
    this.radioList1 = const [],
    this.radioList2 = const [],
    this.radioList3 = const [],
    this.radioList4 = const [],
    this.radioList5 = const [],
  }) {}

  List<DepartmentsscreenItemModel> departmentsscreenItemList;

  List<String> radioList;

  List<String> radioList1;

  List<String> radioList2;

  List<String> radioList3;

  List<String> radioList4;

  List<String> radioList5;

  DepartmentsModel copyWith({
    List<DepartmentsscreenItemModel>? departmentsscreenItemList,
    List<String>? radioList,
    List<String>? radioList1,
    List<String>? radioList2,
    List<String>? radioList3,
    List<String>? radioList4,
    List<String>? radioList5,
  }) {
    return DepartmentsModel(
      departmentsscreenItemList:
          departmentsscreenItemList ?? this.departmentsscreenItemList,
      radioList: radioList ?? this.radioList,
      radioList1: radioList1 ?? this.radioList1,
      radioList2: radioList2 ?? this.radioList2,
      radioList3: radioList3 ?? this.radioList3,
      radioList4: radioList4 ?? this.radioList4,
      radioList5: radioList5 ?? this.radioList5,
    );
  }

  @override
  List<Object?> get props => [
        departmentsscreenItemList,
        radioList,
        radioList1,
        radioList2,
        radioList3,
        radioList4,
        radioList5
      ];
}
