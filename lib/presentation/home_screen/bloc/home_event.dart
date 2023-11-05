// ignore_for_file: must_be_immutable

part of 'home_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Home widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class HomeEvent extends Equatable {}

/// Event that is dispatched when the Home widget is first created.
class HomeInitialEvent extends HomeEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing radio button
class ChangeRadioButtonEvent extends HomeEvent {
  ChangeRadioButtonEvent({required this.value});

  String value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing radio button
class ChangeRadioButton1Event extends HomeEvent {
  ChangeRadioButton1Event({required this.value});

  String value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing radio button
class ChangeRadioButton2Event extends HomeEvent {
  ChangeRadioButton2Event({required this.value});

  String value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing radio button
class ChangeRadioButton3Event extends HomeEvent {
  ChangeRadioButton3Event({required this.value});

  String value;

  @override
  List<Object?> get props => [
        value,
      ];
}
