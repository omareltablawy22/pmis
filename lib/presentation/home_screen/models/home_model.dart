// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';

/// This class defines the variables used in the [home_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class HomeModel extends Equatable {
  HomeModel({
    this.radioList = const [],
    this.radioList1 = const [],
    this.radioList2 = const [],
    this.radioList3 = const [],
  }) {}

  List<String> radioList;

  List<String> radioList1;

  List<String> radioList2;

  List<String> radioList3;

  HomeModel copyWith({
    List<String>? radioList,
    List<String>? radioList1,
    List<String>? radioList2,
    List<String>? radioList3,
  }) {
    return HomeModel(
      radioList: radioList ?? this.radioList,
      radioList1: radioList1 ?? this.radioList1,
      radioList2: radioList2 ?? this.radioList2,
      radioList3: radioList3 ?? this.radioList3,
    );
  }

  @override
  List<Object?> get props => [radioList, radioList1, radioList2, radioList3];
}
