// ignore_for_file: must_be_immutable

part of 'departments_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Departments widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class DepartmentsEvent extends Equatable {}

/// Event that is dispatched when the Departments widget is first created.
class DepartmentsInitialEvent extends DepartmentsEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing radio button
class ChangeRadioButtonEvent extends DepartmentsEvent {
  ChangeRadioButtonEvent({required this.value});

  String value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing radio button
class ChangeRadioButton1Event extends DepartmentsEvent {
  ChangeRadioButton1Event({required this.value});

  String value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing radio button
class ChangeRadioButton2Event extends DepartmentsEvent {
  ChangeRadioButton2Event({required this.value});

  String value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing radio button
class ChangeRadioButton3Event extends DepartmentsEvent {
  ChangeRadioButton3Event({required this.value});

  String value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing radio button
class ChangeRadioButton4Event extends DepartmentsEvent {
  ChangeRadioButton4Event({required this.value});

  String value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing radio button
class ChangeRadioButton5Event extends DepartmentsEvent {
  ChangeRadioButton5Event({required this.value});

  String value;

  @override
  List<Object?> get props => [
        value,
      ];
}
