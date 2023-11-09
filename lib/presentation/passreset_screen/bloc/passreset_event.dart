// ignore_for_file: must_be_immutable

part of 'passreset_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Passreset widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class PassresetEvent extends Equatable {}

/// Event that is dispatched when the Passreset widget is first created.
class PassresetInitialEvent extends PassresetEvent {
  @override
  List<Object?> get props => [];
}
