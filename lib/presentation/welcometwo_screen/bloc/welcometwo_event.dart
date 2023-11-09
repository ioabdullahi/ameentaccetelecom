// ignore_for_file: must_be_immutable

part of 'welcometwo_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Welcometwo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class WelcometwoEvent extends Equatable {}

/// Event that is dispatched when the Welcometwo widget is first created.
class WelcometwoInitialEvent extends WelcometwoEvent {
  @override
  List<Object?> get props => [];
}
