// ignore_for_file: must_be_immutable

part of 'home_screen_old_bloc.dart';

/// Represents the state of HomeScreenOld in the application.
class HomeScreenOldState extends Equatable {
  HomeScreenOldState({this.homeScreenOldModelObj});

  HomeScreenOldModel? homeScreenOldModelObj;

  @override
  List<Object?> get props => [
        homeScreenOldModelObj,
      ];
  HomeScreenOldState copyWith({HomeScreenOldModel? homeScreenOldModelObj}) {
    return HomeScreenOldState(
      homeScreenOldModelObj:
          homeScreenOldModelObj ?? this.homeScreenOldModelObj,
    );
  }
}
