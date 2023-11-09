// ignore_for_file: must_be_immutable

part of 'signup_bloc.dart';

/// Represents the state of Signup in the application.
class SignupState extends Equatable {
  SignupState({
    this.fullnameController,
    this.emailController,
    this.passwordoneController,
    this.passwordtwoController,
    this.isShowPassword = true,
    this.isShowPassword1 = true,
    this.signupModelObj,
  });

  TextEditingController? fullnameController;

  TextEditingController? emailController;

  TextEditingController? passwordoneController;

  TextEditingController? passwordtwoController;

  SignupModel? signupModelObj;

  bool isShowPassword;

  bool isShowPassword1;

  @override
  List<Object?> get props => [
        fullnameController,
        emailController,
        passwordoneController,
        passwordtwoController,
        isShowPassword,
        isShowPassword1,
        signupModelObj,
      ];
  SignupState copyWith({
    TextEditingController? fullnameController,
    TextEditingController? emailController,
    TextEditingController? passwordoneController,
    TextEditingController? passwordtwoController,
    bool? isShowPassword,
    bool? isShowPassword1,
    SignupModel? signupModelObj,
  }) {
    return SignupState(
      fullnameController: fullnameController ?? this.fullnameController,
      emailController: emailController ?? this.emailController,
      passwordoneController:
          passwordoneController ?? this.passwordoneController,
      passwordtwoController:
          passwordtwoController ?? this.passwordtwoController,
      isShowPassword: isShowPassword ?? this.isShowPassword,
      isShowPassword1: isShowPassword1 ?? this.isShowPassword1,
      signupModelObj: signupModelObj ?? this.signupModelObj,
    );
  }
}
