// ignore_for_file: must_be_immutable

part of 'otp_screen_old_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///OtpScreenOld widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class OtpScreenOldEvent extends Equatable {}

/// Event that is dispatched when the OtpScreenOld widget is first created.
class OtpScreenOldInitialEvent extends OtpScreenOldEvent {
  @override
  List<Object?> get props => [];
}
