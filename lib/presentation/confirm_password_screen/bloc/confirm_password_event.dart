// ignore_for_file: must_be_immutable

part of 'confirm_password_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ConfirmPassword widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ConfirmPasswordEvent extends Equatable {}

/// Event that is dispatched when the ConfirmPassword widget is first created.
class ConfirmPasswordInitialEvent extends ConfirmPasswordEvent {
  @override
  List<Object?> get props => [];
}
