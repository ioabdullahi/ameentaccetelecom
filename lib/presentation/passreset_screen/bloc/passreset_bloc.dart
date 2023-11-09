import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:ameentaccetelecom/presentation/passreset_screen/models/passreset_model.dart';
part 'passreset_event.dart';
part 'passreset_state.dart';

/// A bloc that manages the state of a Passreset according to the event that is dispatched to it.
class PassresetBloc extends Bloc<PassresetEvent, PassresetState> {
  PassresetBloc(PassresetState initialState) : super(initialState) {
    on<PassresetInitialEvent>(_onInitialize);
  }

  _onInitialize(
    PassresetInitialEvent event,
    Emitter<PassresetState> emit,
  ) async {
    emit(state.copyWith(
        passwordController: TextEditingController(),
        passwordoneController: TextEditingController()));
  }
}
