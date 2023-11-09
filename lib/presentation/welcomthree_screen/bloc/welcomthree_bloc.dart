import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:ameentaccetelecom/presentation/welcomthree_screen/models/welcomthree_model.dart';
part 'welcomthree_event.dart';
part 'welcomthree_state.dart';

/// A bloc that manages the state of a Welcomthree according to the event that is dispatched to it.
class WelcomthreeBloc extends Bloc<WelcomthreeEvent, WelcomthreeState> {
  WelcomthreeBloc(WelcomthreeState initialState) : super(initialState) {
    on<WelcomthreeInitialEvent>(_onInitialize);
  }

  _onInitialize(
    WelcomthreeInitialEvent event,
    Emitter<WelcomthreeState> emit,
  ) async {}
}
