// ignore_for_file: must_be_immutable

part of 'services_page_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ServicesPage widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ServicesPageEvent extends Equatable {}

/// Event that is dispatched when the ServicesPage widget is first created.
class ServicesPageInitialEvent extends ServicesPageEvent {
  @override
  List<Object?> get props => [];
}
