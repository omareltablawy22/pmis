// ignore_for_file: must_be_immutable

part of 'prject_home_bloc.dart';

/// Represents the state of PrjectHome in the application.
class PrjectHomeState extends Equatable {
  PrjectHomeState({
    this.searchController,
    this.prjectHomeModelObj,
  });

  TextEditingController? searchController;

  PrjectHomeModel? prjectHomeModelObj;

  @override
  List<Object?> get props => [
        searchController,
        prjectHomeModelObj,
      ];
  PrjectHomeState copyWith({
    TextEditingController? searchController,
    PrjectHomeModel? prjectHomeModelObj,
  }) {
    return PrjectHomeState(
      searchController: searchController ?? this.searchController,
      prjectHomeModelObj: prjectHomeModelObj ?? this.prjectHomeModelObj,
    );
  }
}
