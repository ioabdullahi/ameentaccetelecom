// ignore_for_file: must_be_immutable

part of 'verifyemail_bloc.dart';

/// Represents the state of Verifyemail in the application.
class VerifyemailState extends Equatable {
  VerifyemailState({
    this.otpController,
    this.verifyemailModelObj,
  });

  TextEditingController? otpController;

  VerifyemailModel? verifyemailModelObj;

  @override
  List<Object?> get props => [
        otpController,
        verifyemailModelObj,
      ];
  VerifyemailState copyWith({
    TextEditingController? otpController,
    VerifyemailModel? verifyemailModelObj,
  }) {
    return VerifyemailState(
      otpController: otpController ?? this.otpController,
      verifyemailModelObj: verifyemailModelObj ?? this.verifyemailModelObj,
    );
  }
}
