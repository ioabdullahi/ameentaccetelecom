// ignore_for_file: must_be_immutable

part of 'verifyemail_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Verifyemail widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class VerifyemailEvent extends Equatable {}

/// Event that is dispatched when the Verifyemail widget is first created.
class VerifyemailInitialEvent extends VerifyemailEvent {
  @override
  List<Object?> get props => [];
}

///event for OTP auto fill
class ChangeOTPEvent extends VerifyemailEvent {
  ChangeOTPEvent({required this.code});

  String code;

  @override
  List<Object?> get props => [
        code,
      ];
}
