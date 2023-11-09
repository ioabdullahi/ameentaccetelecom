// ignore_for_file: must_be_immutable

part of 'log_in_bloc.dart';

/// Represents the state of LogIn in the application.
class LogInState extends Equatable {
  LogInState({
    this.emailController,
    this.passwordoneController,
    this.isShowPassword = true,
    this.logInModelObj,
  });

  TextEditingController? emailController;

  TextEditingController? passwordoneController;

  LogInModel? logInModelObj;

  bool isShowPassword;

  @override
  List<Object?> get props => [
        emailController,
        passwordoneController,
        isShowPassword,
        logInModelObj,
      ];
  LogInState copyWith({
    TextEditingController? emailController,
    TextEditingController? passwordoneController,
    bool? isShowPassword,
    LogInModel? logInModelObj,
  }) {
    return LogInState(
      emailController: emailController ?? this.emailController,
      passwordoneController:
          passwordoneController ?? this.passwordoneController,
      isShowPassword: isShowPassword ?? this.isShowPassword,
      logInModelObj: logInModelObj ?? this.logInModelObj,
    );
  }
}
