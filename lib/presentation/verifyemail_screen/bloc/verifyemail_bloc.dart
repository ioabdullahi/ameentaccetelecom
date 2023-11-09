import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:ameentaccetelecom/presentation/verifyemail_screen/models/verifyemail_model.dart';
import 'package:sms_autofill/sms_autofill.dart';
part 'verifyemail_event.dart';
part 'verifyemail_state.dart';

/// A bloc that manages the state of a Verifyemail according to the event that is dispatched to it.
class VerifyemailBloc extends Bloc<VerifyemailEvent, VerifyemailState>
    with CodeAutoFill {
  VerifyemailBloc(VerifyemailState initialState) : super(initialState) {
    on<VerifyemailInitialEvent>(_onInitialize);
    on<ChangeOTPEvent>(_changeOTP);
  }

  @override
  codeUpdated() {
    add(ChangeOTPEvent(code: code!));
  }

  _changeOTP(
    ChangeOTPEvent event,
    Emitter<VerifyemailState> emit,
  ) {
    emit(
        state.copyWith(otpController: TextEditingController(text: event.code)));
  }

  _onInitialize(
    VerifyemailInitialEvent event,
    Emitter<VerifyemailState> emit,
  ) async {
    emit(state.copyWith(otpController: TextEditingController()));
    listenForCode();
  }
}
