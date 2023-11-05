// ignore_for_file: must_be_immutable

part of 'verify_bloc.dart';

/// Represents the state of Verify in the application.
class VerifyState extends Equatable {
  VerifyState({this.verifyModelObj});

  VerifyModel? verifyModelObj;

  @override
  List<Object?> get props => [
        verifyModelObj,
      ];
  VerifyState copyWith({VerifyModel? verifyModelObj}) {
    return VerifyState(
      verifyModelObj: verifyModelObj ?? this.verifyModelObj,
    );
  }
}
