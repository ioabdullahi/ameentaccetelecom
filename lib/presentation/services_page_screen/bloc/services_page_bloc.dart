import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:ameentaccetelecom/presentation/services_page_screen/models/services_page_model.dart';
part 'services_page_event.dart';
part 'services_page_state.dart';

/// A bloc that manages the state of a ServicesPage according to the event that is dispatched to it.
class ServicesPageBloc extends Bloc<ServicesPageEvent, ServicesPageState> {
  ServicesPageBloc(ServicesPageState initialState) : super(initialState) {
    on<ServicesPageInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ServicesPageInitialEvent event,
    Emitter<ServicesPageState> emit,
  ) async {}
}
