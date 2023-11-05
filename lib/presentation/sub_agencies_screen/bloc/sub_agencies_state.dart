// ignore_for_file: must_be_immutable

part of 'sub_agencies_bloc.dart';

/// Represents the state of SubAgencies in the application.
class SubAgenciesState extends Equatable {
  SubAgenciesState({
    this.searchController,
    this.radioGroup = "",
    this.radioGroup1 = "",
    this.radioGroup2 = "",
    this.radioGroup3 = "",
    this.radioGroup4 = "",
    this.radioGroup5 = "",
    this.subAgenciesModelObj,
  });

  TextEditingController? searchController;

  SubAgenciesModel? subAgenciesModelObj;

  String radioGroup;

  String radioGroup1;

  String radioGroup2;

  String radioGroup3;

  String radioGroup4;

  String radioGroup5;

  @override
  List<Object?> get props => [
        searchController,
        radioGroup,
        radioGroup1,
        radioGroup2,
        radioGroup3,
        radioGroup4,
        radioGroup5,
        subAgenciesModelObj,
      ];
  SubAgenciesState copyWith({
    TextEditingController? searchController,
    String? radioGroup,
    String? radioGroup1,
    String? radioGroup2,
    String? radioGroup3,
    String? radioGroup4,
    String? radioGroup5,
    SubAgenciesModel? subAgenciesModelObj,
  }) {
    return SubAgenciesState(
      searchController: searchController ?? this.searchController,
      radioGroup: radioGroup ?? this.radioGroup,
      radioGroup1: radioGroup1 ?? this.radioGroup1,
      radioGroup2: radioGroup2 ?? this.radioGroup2,
      radioGroup3: radioGroup3 ?? this.radioGroup3,
      radioGroup4: radioGroup4 ?? this.radioGroup4,
      radioGroup5: radioGroup5 ?? this.radioGroup5,
      subAgenciesModelObj: subAgenciesModelObj ?? this.subAgenciesModelObj,
    );
  }
}
