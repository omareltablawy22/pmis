// ignore_for_file: must_be_immutable

part of 'department_home_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///DepartmentHome widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class DepartmentHomeEvent extends Equatable {}

/// Event that is dispatched when the DepartmentHome widget is first created.
class DepartmentHomeInitialEvent extends DepartmentHomeEvent {
  @override
  List<Object?> get props => [];
}
