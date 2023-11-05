// ignore_for_file: must_be_immutable

part of 'prject_home_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///PrjectHome widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class PrjectHomeEvent extends Equatable {}

/// Event that is dispatched when the PrjectHome widget is first created.
class PrjectHomeInitialEvent extends PrjectHomeEvent {
  @override
  List<Object?> get props => [];
}
