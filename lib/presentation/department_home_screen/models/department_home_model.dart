// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'userprofileview_item_model.dart';

/// This class defines the variables used in the [department_home_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class DepartmentHomeModel extends Equatable {
  DepartmentHomeModel({this.userprofileviewItemList = const []}) {}

  List<UserprofileviewItemModel> userprofileviewItemList;

  DepartmentHomeModel copyWith(
      {List<UserprofileviewItemModel>? userprofileviewItemList}) {
    return DepartmentHomeModel(
      userprofileviewItemList:
          userprofileviewItemList ?? this.userprofileviewItemList,
    );
  }

  @override
  List<Object?> get props => [userprofileviewItemList];
}
