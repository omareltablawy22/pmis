// ignore_for_file: must_be_immutable

part of 'department_home_bloc.dart';

/// Represents the state of DepartmentHome in the application.
class DepartmentHomeState extends Equatable {
  DepartmentHomeState({this.departmentHomeModelObj});

  DepartmentHomeModel? departmentHomeModelObj;

  @override
  List<Object?> get props => [
        departmentHomeModelObj,
      ];
  DepartmentHomeState copyWith({DepartmentHomeModel? departmentHomeModelObj}) {
    return DepartmentHomeState(
      departmentHomeModelObj:
          departmentHomeModelObj ?? this.departmentHomeModelObj,
    );
  }
}
