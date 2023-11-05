// ignore_for_file: must_be_immutable

part of 'login_success_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///LoginSuccess widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class LoginSuccessEvent extends Equatable {}

/// Event that is dispatched when the LoginSuccess widget is first created.
class LoginSuccessInitialEvent extends LoginSuccessEvent {
  @override
  List<Object?> get props => [];
}
