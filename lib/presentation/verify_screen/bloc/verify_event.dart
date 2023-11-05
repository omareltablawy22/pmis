// ignore_for_file: must_be_immutable

part of 'verify_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Verify widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class VerifyEvent extends Equatable {}

/// Event that is dispatched when the Verify widget is first created.
class VerifyInitialEvent extends VerifyEvent {
  @override
  List<Object?> get props => [];
}
