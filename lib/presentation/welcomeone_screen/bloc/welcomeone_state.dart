// ignore_for_file: must_be_immutable

part of 'welcomeone_bloc.dart';

/// Represents the state of Welcomeone in the application.
class WelcomeoneState extends Equatable {
  WelcomeoneState({this.welcomeoneModelObj});

  WelcomeoneModel? welcomeoneModelObj;

  @override
  List<Object?> get props => [
        welcomeoneModelObj,
      ];
  WelcomeoneState copyWith({WelcomeoneModel? welcomeoneModelObj}) {
    return WelcomeoneState(
      welcomeoneModelObj: welcomeoneModelObj ?? this.welcomeoneModelObj,
    );
  }
}
