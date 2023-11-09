import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:ameentaccetelecom/presentation/settings_page_screen/models/settings_page_model.dart';
part 'settings_page_event.dart';
part 'settings_page_state.dart';

/// A bloc that manages the state of a SettingsPage according to the event that is dispatched to it.
class SettingsPageBloc extends Bloc<SettingsPageEvent, SettingsPageState> {
  SettingsPageBloc(SettingsPageState initialState) : super(initialState) {
    on<SettingsPageInitialEvent>(_onInitialize);
    on<ChangeSwitchEvent>(_changeSwitch);
    on<ChangeSwitch1Event>(_changeSwitch1);
  }

  _changeSwitch(
    ChangeSwitchEvent event,
    Emitter<SettingsPageState> emit,
  ) {
    emit(state.copyWith(
      isSelectedSwitch: event.value,
    ));
  }

  _changeSwitch1(
    ChangeSwitch1Event event,
    Emitter<SettingsPageState> emit,
  ) {
    emit(state.copyWith(
      isSelectedSwitch1: event.value,
    ));
  }

  _onInitialize(
    SettingsPageInitialEvent event,
    Emitter<SettingsPageState> emit,
  ) async {
    emit(state.copyWith(
      isSelectedSwitch: false,
      isSelectedSwitch1: false,
    ));
  }
}
