// ignore_for_file: must_be_immutable

part of 'administrators_bloc.dart';

/// Represents the state of Administrators in the application.
class AdministratorsState extends Equatable {
  AdministratorsState({
    this.searchController,
    this.numberValue = "",
    this.englishText = "",
    this.administratorsModelObj,
  });

  TextEditingController? searchController;

  AdministratorsModel? administratorsModelObj;

  String numberValue;

  String englishText;

  @override
  List<Object?> get props => [
        searchController,
        numberValue,
        englishText,
        administratorsModelObj,
      ];
  AdministratorsState copyWith({
    TextEditingController? searchController,
    String? numberValue,
    String? englishText,
    AdministratorsModel? administratorsModelObj,
  }) {
    return AdministratorsState(
      searchController: searchController ?? this.searchController,
      numberValue: numberValue ?? this.numberValue,
      englishText: englishText ?? this.englishText,
      administratorsModelObj:
          administratorsModelObj ?? this.administratorsModelObj,
    );
  }
}
