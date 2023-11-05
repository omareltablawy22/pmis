// ignore_for_file: must_be_immutable

part of 'home_bloc.dart';

/// Represents the state of Home in the application.
class HomeState extends Equatable {
  HomeState({
    this.radioGroup = "",
    this.radioGroup1 = "",
    this.radioGroup2 = "",
    this.radioGroup3 = "",
    this.homeModelObj,
  });

  HomeModel? homeModelObj;

  String radioGroup;

  String radioGroup1;

  String radioGroup2;

  String radioGroup3;

  @override
  List<Object?> get props => [
        radioGroup,
        radioGroup1,
        radioGroup2,
        radioGroup3,
        homeModelObj,
      ];
  HomeState copyWith({
    String? radioGroup,
    String? radioGroup1,
    String? radioGroup2,
    String? radioGroup3,
    HomeModel? homeModelObj,
  }) {
    return HomeState(
      radioGroup: radioGroup ?? this.radioGroup,
      radioGroup1: radioGroup1 ?? this.radioGroup1,
      radioGroup2: radioGroup2 ?? this.radioGroup2,
      radioGroup3: radioGroup3 ?? this.radioGroup3,
      homeModelObj: homeModelObj ?? this.homeModelObj,
    );
  }
}
