import 'bloc/signup_bloc.dart';
import 'models/signup_model.dart';
import 'package:ameentaccetelecom/core/app_export.dart';
import 'package:ameentaccetelecom/core/utils/validation_functions.dart';
import 'package:ameentaccetelecom/widgets/custom_button.dart';
import 'package:ameentaccetelecom/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class SignupScreen extends StatelessWidget {
  SignupScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<SignupBloc>(
        create: (context) =>
            SignupBloc(SignupState(signupModelObj: SignupModel()))
              ..add(SignupInitialEvent()),
        child: SignupScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.blue50,
            resizeToAvoidBottomInset: false,
            body: Form(
                key: _formKey,
                child: SizedBox(
                    width: getHorizontalSize(414),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Expanded(
                              child: SingleChildScrollView(
                                  padding: getPadding(top: 59),
                                  child: Padding(
                                      padding: getPadding(
                                          left: 31, right: 26, bottom: 39),
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Align(
                                                alignment: Alignment.center,
                                                child: Text(
                                                    "msg_ameentaccetelecom".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtPoppinsBold24)),
                                            Align(
                                                alignment: Alignment.center,
                                                child: Padding(
                                                    padding:
                                                        getPadding(top: 41),
                                                    child: Text(
                                                        "msg_create_an_account"
                                                            .tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtPoppinsBold18))),
                                            Padding(
                                                padding: getPadding(
                                                    left: 7, top: 43),
                                                child: Text("lbl_name".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtPoppinsMedium16)),
                                            BlocSelector<
                                                    SignupBloc,
                                                    SignupState,
                                                    TextEditingController?>(
                                                selector: (state) =>
                                                    state.fullnameController,
                                                builder: (context,
                                                    fullnameController) {
                                                  return CustomTextFormField(
                                                      focusNode: FocusNode(),
                                                      autofocus: true,
                                                      controller:
                                                          fullnameController,
                                                      hintText:
                                                          "msg_enter_your_fullname"
                                                              .tr,
                                                      margin: getMargin(
                                                          left: 7, top: 18),
                                                      padding:
                                                          TextFormFieldPadding
                                                              .PaddingT18,
                                                      validator: (value) {
                                                        if (!isText(value)) {
                                                          return "Please enter valid text";
                                                        }
                                                        return null;
                                                      });
                                                }),
                                            Padding(
                                                padding: getPadding(
                                                    left: 7, top: 35),
                                                child: Text(
                                                    "lbl_email_address".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtPoppinsMedium16)),
                                            BlocSelector<
                                                    SignupBloc,
                                                    SignupState,
                                                    TextEditingController?>(
                                                selector: (state) =>
                                                    state.emailController,
                                                builder:
                                                    (context, emailController) {
                                                  return CustomTextFormField(
                                                      focusNode: FocusNode(),
                                                      autofocus: true,
                                                      controller:
                                                          emailController,
                                                      hintText:
                                                          "msg_enter_your_email"
                                                              .tr,
                                                      margin: getMargin(
                                                          left: 7, top: 19),
                                                      padding:
                                                          TextFormFieldPadding
                                                              .PaddingT18_1,
                                                      textInputType: TextInputType
                                                          .emailAddress,
                                                      prefix: Container(
                                                          padding: getPadding(
                                                              left: 2,
                                                              top: 6,
                                                              right: 2,
                                                              bottom: 6),
                                                          margin: getMargin(
                                                              left: 20,
                                                              top: 14,
                                                              right: 14,
                                                              bottom: 14),
                                                          decoration: BoxDecoration(
                                                              color: ColorConstant
                                                                  .blueA70019,
                                                              borderRadius:
                                                                  BorderRadius.circular(
                                                                      getHorizontalSize(
                                                                          5)),
                                                              border: Border.all(
                                                                  color: ColorConstant
                                                                      .indigoA700,
                                                                  width:
                                                                      getHorizontalSize(1))),
                                                          child: CustomImageView(svgPath: ImageConstant.imgVector)),
                                                      prefixConstraints: BoxConstraints(maxHeight: getVerticalSize(60)),
                                                      validator: (value) {
                                                        if (value == null ||
                                                            (!isValidEmail(
                                                                value,
                                                                isRequired:
                                                                    true))) {
                                                          return "Please enter valid email";
                                                        }
                                                        return null;
                                                      });
                                                }),
                                            Padding(
                                                padding: getPadding(
                                                    left: 7, top: 36),
                                                child: Text("lbl_password".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtPoppinsMedium16)),
                                            BlocBuilder<SignupBloc,
                                                    SignupState>(
                                                builder: (context, state) {
                                              return CustomTextFormField(
                                                  focusNode: FocusNode(),
                                                  autofocus: true,
                                                  controller: state
                                                      .passwordoneController,
                                                  hintText: "msg_enter_your_password"
                                                      .tr,
                                                  margin: getMargin(
                                                      left: 7, top: 18),
                                                  textInputType: TextInputType
                                                      .visiblePassword,
                                                  prefix: Container(
                                                      padding: getPadding(
                                                          left: 3,
                                                          top: 1,
                                                          right: 3,
                                                          bottom: 2),
                                                      margin: getMargin(
                                                          left: 8,
                                                          top: 18,
                                                          right: 22,
                                                          bottom: 18),
                                                      decoration: BoxDecoration(
                                                          color: ColorConstant
                                                              .blueA70019,
                                                          borderRadius: BorderRadius.circular(
                                                              getHorizontalSize(
                                                                  5)),
                                                          border: Border.all(
                                                              color: ColorConstant
                                                                  .indigoA700,
                                                              width: getHorizontalSize(
                                                                  1))),
                                                      child: CustomImageView(
                                                          svgPath: ImageConstant.imgLock)),
                                                  prefixConstraints: BoxConstraints(maxHeight: getVerticalSize(60)),
                                                  suffix: InkWell(
                                                      onTap: () {
                                                        context
                                                            .read<SignupBloc>()
                                                            .add(ChangePasswordVisibilityEvent(
                                                                value: !state
                                                                    .isShowPassword));
                                                      },
                                                      child: Container(margin: getMargin(left: 12, top: 18, right: 9, bottom: 18), decoration: BoxDecoration(color: ColorConstant.blueA70019, borderRadius: BorderRadius.circular(getHorizontalSize(5)), border: Border.all(color: ColorConstant.indigoA700, width: getHorizontalSize(1))), child: CustomImageView(svgPath: state.isShowPassword ? ImageConstant.imgCall : ImageConstant.imgCall))),
                                                  suffixConstraints: BoxConstraints(maxHeight: getVerticalSize(60)),
                                                  validator: (value) {
                                                    if (value == null ||
                                                        (!isValidPassword(value,
                                                            isRequired:
                                                                true))) {
                                                      return "Please enter valid password";
                                                    }
                                                    return null;
                                                  },
                                                  isObscureText: state.isShowPassword);
                                            }),
                                            Padding(
                                                padding: getPadding(
                                                    left: 7, top: 35),
                                                child: Text(
                                                    "msg_confirm_password".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtPoppinsMedium16)),
                                            BlocBuilder<SignupBloc,
                                                    SignupState>(
                                                builder: (context, state) {
                                              return CustomTextFormField(
                                                  focusNode: FocusNode(),
                                                  autofocus: true,
                                                  controller: state
                                                      .passwordtwoController,
                                                  hintText:
                                                      "msg_re_enter_the_password"
                                                          .tr,
                                                  margin: getMargin(
                                                      left: 7, top: 19),
                                                  textInputAction:
                                                      TextInputAction.done,
                                                  textInputType: TextInputType
                                                      .visiblePassword,
                                                  prefix: Container(
                                                      padding: getPadding(
                                                          left: 3,
                                                          top: 1,
                                                          right: 3,
                                                          bottom: 2),
                                                      margin: getMargin(
                                                          left: 8,
                                                          top: 18,
                                                          right: 22,
                                                          bottom: 18),
                                                      decoration: BoxDecoration(
                                                          color: ColorConstant
                                                              .blueA70019,
                                                          borderRadius:
                                                              BorderRadius.circular(
                                                                  getHorizontalSize(
                                                                      5)),
                                                          border: Border.all(
                                                              color: ColorConstant
                                                                  .indigoA700,
                                                              width:
                                                                  getHorizontalSize(1))),
                                                      child: CustomImageView(svgPath: ImageConstant.imgLock)),
                                                  prefixConstraints: BoxConstraints(maxHeight: getVerticalSize(60)),
                                                  suffix: InkWell(
                                                      onTap: () {
                                                        context
                                                            .read<SignupBloc>()
                                                            .add(ChangePasswordVisibilityEvent1(
                                                                value: !state
                                                                    .isShowPassword1));
                                                      },
                                                      child: Container(margin: getMargin(left: 12, top: 18, right: 9, bottom: 18), decoration: BoxDecoration(color: ColorConstant.blueA70019, borderRadius: BorderRadius.circular(getHorizontalSize(5)), border: Border.all(color: ColorConstant.indigoA700, width: getHorizontalSize(1))), child: CustomImageView(svgPath: state.isShowPassword1 ? ImageConstant.imgCall : ImageConstant.imgCall))),
                                                  suffixConstraints: BoxConstraints(maxHeight: getVerticalSize(60)),
                                                  validator: (value) {
                                                    if (value == null ||
                                                        (!isValidPassword(value,
                                                            isRequired:
                                                                true))) {
                                                      return "Please enter valid password";
                                                    }
                                                    return null;
                                                  },
                                                  isObscureText: state.isShowPassword1);
                                            }),
                                            CustomButton(
                                                height: getVerticalSize(60),
                                                text: "lbl_sign_up".tr,
                                                margin: getMargin(top: 50),
                                                onTap: () {
                                                  OnTapSignup(context);
                                                }),
                                            Align(
                                                alignment: Alignment.center,
                                                child: GestureDetector(
                                                    onTap: () {
                                                      onTapConfirmation(
                                                          context);
                                                    },
                                                    child: Padding(
                                                        padding:
                                                            getPadding(top: 39),
                                                        child: RichText(
                                                            text: TextSpan(
                                                                children: [
                                                                  TextSpan(
                                                                      text: "msg_have_an_account2"
                                                                          .tr,
                                                                      style: TextStyle(
                                                                          color: ColorConstant
                                                                              .black900,
                                                                          fontSize: getFontSize(
                                                                              14),
                                                                          fontFamily:
                                                                              'Poppins',
                                                                          fontWeight:
                                                                              FontWeight.w500)),
                                                                  TextSpan(
                                                                      text: "lbl_log_in"
                                                                          .tr,
                                                                      style: TextStyle(
                                                                          color: ColorConstant
                                                                              .indigo900,
                                                                          fontSize: getFontSize(
                                                                              14),
                                                                          fontFamily:
                                                                              'Poppins',
                                                                          fontWeight:
                                                                              FontWeight.w500))
                                                                ]),
                                                            textAlign: TextAlign
                                                                .left))))
                                          ]))))
                        ])))));
  }

  /// Navigates to the verifyemailScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the verifyemailScreen.
  OnTapSignup(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.verifyemailScreen,
    );
  }

  /// Navigates to the logInScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the logInScreen.
  onTapConfirmation(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.logInScreen,
    );
  }
}
