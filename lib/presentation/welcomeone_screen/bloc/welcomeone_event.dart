// ignore_for_file: must_be_immutable

part of 'welcomeone_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Welcomeone widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class WelcomeoneEvent extends Equatable {}

/// Event that is dispatched when the Welcomeone widget is first created.
class WelcomeoneInitialEvent extends WelcomeoneEvent {
  @override
  List<Object?> get props => [];
}
