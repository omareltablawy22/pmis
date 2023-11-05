// ignore_for_file: must_be_immutable

part of 'sub_agencies_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SubAgencies widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SubAgenciesEvent extends Equatable {}

/// Event that is dispatched when the SubAgencies widget is first created.
class SubAgenciesInitialEvent extends SubAgenciesEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing radio button
class ChangeRadioButtonEvent extends SubAgenciesEvent {
  ChangeRadioButtonEvent({required this.value});

  String value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing radio button
class ChangeRadioButton1Event extends SubAgenciesEvent {
  ChangeRadioButton1Event({required this.value});

  String value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing radio button
class ChangeRadioButton2Event extends SubAgenciesEvent {
  ChangeRadioButton2Event({required this.value});

  String value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing radio button
class ChangeRadioButton3Event extends SubAgenciesEvent {
  ChangeRadioButton3Event({required this.value});

  String value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing radio button
class ChangeRadioButton4Event extends SubAgenciesEvent {
  ChangeRadioButton4Event({required this.value});

  String value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing radio button
class ChangeRadioButton5Event extends SubAgenciesEvent {
  ChangeRadioButton5Event({required this.value});

  String value;

  @override
  List<Object?> get props => [
        value,
      ];
}
