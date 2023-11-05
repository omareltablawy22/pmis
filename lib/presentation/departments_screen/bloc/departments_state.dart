// ignore_for_file: must_be_immutable

part of 'departments_bloc.dart';

/// Represents the state of Departments in the application.
class DepartmentsState extends Equatable {
  DepartmentsState({
    this.radioGroup = "",
    this.radioGroup1 = "",
    this.radioGroup2 = "",
    this.radioGroup3 = "",
    this.forty = "",
    this.radioGroup4 = "",
    this.departmentsModelObj,
  });

  DepartmentsModel? departmentsModelObj;

  String radioGroup;

  String radioGroup1;

  String radioGroup2;

  String radioGroup3;

  String forty;

  String radioGroup4;

  @override
  List<Object?> get props => [
        radioGroup,
        radioGroup1,
        radioGroup2,
        radioGroup3,
        forty,
        radioGroup4,
        departmentsModelObj,
      ];
  DepartmentsState copyWith({
    String? radioGroup,
    String? radioGroup1,
    String? radioGroup2,
    String? radioGroup3,
    String? forty,
    String? radioGroup4,
    DepartmentsModel? departmentsModelObj,
  }) {
    return DepartmentsState(
      radioGroup: radioGroup ?? this.radioGroup,
      radioGroup1: radioGroup1 ?? this.radioGroup1,
      radioGroup2: radioGroup2 ?? this.radioGroup2,
      radioGroup3: radioGroup3 ?? this.radioGroup3,
      forty: forty ?? this.forty,
      radioGroup4: radioGroup4 ?? this.radioGroup4,
      departmentsModelObj: departmentsModelObj ?? this.departmentsModelObj,
    );
  }
}
