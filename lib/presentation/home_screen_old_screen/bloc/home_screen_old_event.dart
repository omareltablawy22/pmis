// ignore_for_file: must_be_immutable

part of 'home_screen_old_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///HomeScreenOld widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class HomeScreenOldEvent extends Equatable {}

/// Event that is dispatched when the HomeScreenOld widget is first created.
class HomeScreenOldInitialEvent extends HomeScreenOldEvent {
  @override
  List<Object?> get props => [];
}
