// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';

/// This class defines the variables used in the [administrators_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class AdministratorsModel extends Equatable {
  AdministratorsModel({
    this.radioList = const [],
    this.radioList1 = const [],
  }) {}

  List<String> radioList;

  List<String> radioList1;

  AdministratorsModel copyWith({
    List<String>? radioList,
    List<String>? radioList1,
  }) {
    return AdministratorsModel(
      radioList: radioList ?? this.radioList,
      radioList1: radioList1 ?? this.radioList1,
    );
  }

  @override
  List<Object?> get props => [radioList, radioList1];
}
