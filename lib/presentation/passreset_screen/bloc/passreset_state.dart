// ignore_for_file: must_be_immutable

part of 'passreset_bloc.dart';

/// Represents the state of Passreset in the application.
class PassresetState extends Equatable {
  PassresetState({
    this.passwordController,
    this.passwordoneController,
    this.passresetModelObj,
  });

  TextEditingController? passwordController;

  TextEditingController? passwordoneController;

  PassresetModel? passresetModelObj;

  @override
  List<Object?> get props => [
        passwordController,
        passwordoneController,
        passresetModelObj,
      ];
  PassresetState copyWith({
    TextEditingController? passwordController,
    TextEditingController? passwordoneController,
    PassresetModel? passresetModelObj,
  }) {
    return PassresetState(
      passwordController: passwordController ?? this.passwordController,
      passwordoneController:
          passwordoneController ?? this.passwordoneController,
      passresetModelObj: passresetModelObj ?? this.passresetModelObj,
    );
  }
}
