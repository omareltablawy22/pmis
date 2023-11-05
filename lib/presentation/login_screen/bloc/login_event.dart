// ignore_for_file: must_be_immutable

part of 'login_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Login widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class LoginEvent extends Equatable {}

/// Event that is dispatched when the Login widget is first created.
class LoginInitialEvent extends LoginEvent {
  @override
  List<Object?> get props => [];
}

///Event that is dispatched when the user calls the {{Test_URL}}/auth/login API.
class CreateLoginEvent extends LoginEvent {
  CreateLoginEvent({
    this.onCreateLoginEventSuccess,
    this.onCreateLoginEventError,
  });

  Function? onCreateLoginEventSuccess;

  Function? onCreateLoginEventError;

  @override
  List<Object?> get props => [
        onCreateLoginEventSuccess,
        onCreateLoginEventError,
      ];
}

///Event for changing switch
class ChangeSwitchEvent extends LoginEvent {
  ChangeSwitchEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
