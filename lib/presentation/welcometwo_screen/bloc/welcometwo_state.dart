// ignore_for_file: must_be_immutable

part of 'welcometwo_bloc.dart';

/// Represents the state of Welcometwo in the application.
class WelcometwoState extends Equatable {
  WelcometwoState({this.welcometwoModelObj});

  WelcometwoModel? welcometwoModelObj;

  @override
  List<Object?> get props => [
        welcometwoModelObj,
      ];
  WelcometwoState copyWith({WelcometwoModel? welcometwoModelObj}) {
    return WelcometwoState(
      welcometwoModelObj: welcometwoModelObj ?? this.welcometwoModelObj,
    );
  }
}
