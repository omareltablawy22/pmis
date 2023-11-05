// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'userprofilelist_item_model.dart';

/// This class defines the variables used in the [home_screen_old_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class HomeScreenOldModel extends Equatable {
  HomeScreenOldModel({this.userprofilelistItemList = const []}) {}

  List<UserprofilelistItemModel> userprofilelistItemList;

  HomeScreenOldModel copyWith(
      {List<UserprofilelistItemModel>? userprofilelistItemList}) {
    return HomeScreenOldModel(
      userprofilelistItemList:
          userprofilelistItemList ?? this.userprofilelistItemList,
    );
  }

  @override
  List<Object?> get props => [userprofilelistItemList];
}
