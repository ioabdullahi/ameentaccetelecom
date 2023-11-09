import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:ameentaccetelecom/presentation/welcomeone_screen/models/welcomeone_model.dart';
part 'welcomeone_event.dart';
part 'welcomeone_state.dart';

/// A bloc that manages the state of a Welcomeone according to the event that is dispatched to it.
class WelcomeoneBloc extends Bloc<WelcomeoneEvent, WelcomeoneState> {
  WelcomeoneBloc(WelcomeoneState initialState) : super(initialState) {
    on<WelcomeoneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    WelcomeoneInitialEvent event,
    Emitter<WelcomeoneState> emit,
  ) async {}
}
