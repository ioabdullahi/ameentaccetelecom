// ignore_for_file: must_be_immutable

part of 'welcomthree_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Welcomthree widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class WelcomthreeEvent extends Equatable {}

/// Event that is dispatched when the Welcomthree widget is first created.
class WelcomthreeInitialEvent extends WelcomthreeEvent {
  @override
  List<Object?> get props => [];
}
