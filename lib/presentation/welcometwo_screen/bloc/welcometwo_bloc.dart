import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:ameentaccetelecom/presentation/welcometwo_screen/models/welcometwo_model.dart';
part 'welcometwo_event.dart';
part 'welcometwo_state.dart';

/// A bloc that manages the state of a Welcometwo according to the event that is dispatched to it.
class WelcometwoBloc extends Bloc<WelcometwoEvent, WelcometwoState> {
  WelcometwoBloc(WelcometwoState initialState) : super(initialState) {
    on<WelcometwoInitialEvent>(_onInitialize);
  }

  _onInitialize(
    WelcometwoInitialEvent event,
    Emitter<WelcometwoState> emit,
  ) async {}
}
