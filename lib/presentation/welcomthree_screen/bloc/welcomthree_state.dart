// ignore_for_file: must_be_immutable

part of 'welcomthree_bloc.dart';

/// Represents the state of Welcomthree in the application.
class WelcomthreeState extends Equatable {
  WelcomthreeState({this.welcomthreeModelObj});

  WelcomthreeModel? welcomthreeModelObj;

  @override
  List<Object?> get props => [
        welcomthreeModelObj,
      ];
  WelcomthreeState copyWith({WelcomthreeModel? welcomthreeModelObj}) {
    return WelcomthreeState(
      welcomthreeModelObj: welcomthreeModelObj ?? this.welcomthreeModelObj,
    );
  }
}
