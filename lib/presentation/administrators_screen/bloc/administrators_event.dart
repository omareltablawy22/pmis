// ignore_for_file: must_be_immutable

part of 'administrators_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Administrators widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class AdministratorsEvent extends Equatable {}

/// Event that is dispatched when the Administrators widget is first created.
class AdministratorsInitialEvent extends AdministratorsEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing radio button
class ChangeRadioButtonEvent extends AdministratorsEvent {
  ChangeRadioButtonEvent({required this.value});

  String value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing radio button
class ChangeRadioButton1Event extends AdministratorsEvent {
  ChangeRadioButton1Event({required this.value});

  String value;

  @override
  List<Object?> get props => [
        value,
      ];
}
