import 'bloc/log_in_bloc.dart';
import 'models/log_in_model.dart';
import 'package:ameentaccetelecom/core/app_export.dart';
import 'package:ameentaccetelecom/core/utils/validation_functions.dart';
import 'package:ameentaccetelecom/widgets/custom_button.dart';
import 'package:ameentaccetelecom/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class LogInScreen extends StatelessWidget {
  LogInScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<LogInBloc>(
        create: (context) => LogInBloc(LogInState(logInModelObj: LogInModel()))
          ..add(LogInInitialEvent()),
        child: LogInScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.blue50,
            resizeToAvoidBottomInset: false,
            body: Form(
                key: _formKey,
                child: Container(
                    width: getHorizontalSize(414),
                    padding:
                        getPadding(left: 31, top: 55, right: 31, bottom: 55),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                              padding: getPadding(top: 3),
                              child: Text("msg_ameentaccetelecom".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtPoppinsBold24)),
                          Container(
                              width: getHorizontalSize(139),
                              margin: getMargin(top: 32),
                              child: Text("msg_welcome_back_login".tr,
                                  maxLines: null,
                                  textAlign: TextAlign.center,
                                  style: AppStyle.txtPoppinsMedium16)),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding: getPadding(top: 41),
                                  child: Text("lbl_email_address".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtPoppinsMedium16))),
                          BlocSelector<LogInBloc, LogInState,
                                  TextEditingController?>(
                              selector: (state) => state.emailController,
                              builder: (context, emailController) {
                                return CustomTextFormField(
                                    focusNode: FocusNode(),
                                    autofocus: true,
                                    controller: emailController,
                                    hintText: "msg_enter_your_email".tr,
                                    margin: getMargin(top: 19),
                                    padding: TextFormFieldPadding.PaddingT22,
                                    fontStyle: TextFormFieldFontStyle
                                        .InterRegular12Black900b2,
                                    textInputType: TextInputType.emailAddress,
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
                                            color: ColorConstant.blueA70019,
                                            borderRadius: BorderRadius.circular(
                                                getHorizontalSize(5)),
                                            border: Border.all(
                                                color: ColorConstant.indigoA700,
                                                width: getHorizontalSize(1))),
                                        child: CustomImageView(
                                            svgPath: ImageConstant.imgVector)),
                                    prefixConstraints: BoxConstraints(
                                        maxHeight: getVerticalSize(60)),
                                    validator: (value) {
                                      if (value == null ||
                                          (!isValidEmail(value,
                                              isRequired: true))) {
                                        return "Please enter valid email";
                                      }
                                      return null;
                                    });
                              }),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding: getPadding(left: 1, top: 36),
                                  child: Text("lbl_password".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtPoppinsMedium16))),
                          BlocBuilder<LogInBloc, LogInState>(
                              builder: (context, state) {
                            return CustomTextFormField(
                                focusNode: FocusNode(),
                                autofocus: true,
                                controller: state.passwordoneController,
                                hintText: "msg_enter_your_password".tr,
                                margin: getMargin(top: 18),
                                padding: TextFormFieldPadding.PaddingT22_1,
                                fontStyle: TextFormFieldFontStyle
                                    .InterRegular12Black900b2,
                                textInputAction: TextInputAction.done,
                                textInputType: TextInputType.visiblePassword,
                                prefix: Container(
                                    padding: getPadding(
                                        left: 3, top: 1, right: 3, bottom: 2),
                                    margin: getMargin(
                                        left: 8,
                                        top: 18,
                                        right: 22,
                                        bottom: 18),
                                    decoration: BoxDecoration(
                                        color: ColorConstant.blueA70019,
                                        borderRadius: BorderRadius.circular(
                                            getHorizontalSize(5)),
                                        border: Border.all(
                                            color: ColorConstant.indigoA700,
                                            width: getHorizontalSize(1))),
                                    child: CustomImageView(
                                        svgPath: ImageConstant.imgLock)),
                                prefixConstraints: BoxConstraints(
                                    maxHeight: getVerticalSize(60)),
                                suffix: InkWell(
                                    onTap: () {
                                      context.read<LogInBloc>().add(
                                          ChangePasswordVisibilityEvent(
                                              value: !state.isShowPassword));
                                    },
                                    child: Container(
                                        margin: getMargin(
                                            left: 12,
                                            top: 18,
                                            right: 9,
                                            bottom: 18),
                                        decoration: BoxDecoration(
                                            color: ColorConstant.blueA70019,
                                            borderRadius: BorderRadius.circular(
                                                getHorizontalSize(5)),
                                            border: Border.all(
                                                color: ColorConstant.indigoA700,
                                                width: getHorizontalSize(1))),
                                        child: CustomImageView(
                                            svgPath:
                                                state.isShowPassword ? ImageConstant.imgCall : ImageConstant.imgCall))),
                                suffixConstraints: BoxConstraints(maxHeight: getVerticalSize(60)),
                                validator: (value) {
                                  if (value == null ||
                                      (!isValidPassword(value,
                                          isRequired: true))) {
                                    return "Please enter valid password";
                                  }
                                  return null;
                                },
                                isObscureText: state.isShowPassword);
                          }),
                          Align(
                              alignment: Alignment.centerRight,
                              child: Padding(
                                  padding: getPadding(top: 13, right: 1),
                                  child: Text("msg_forgot_password".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtPoppinsMedium14Indigo900))),
                          CustomButton(
                              height: getVerticalSize(60),
                              text: "lbl_log_in2".tr,
                              margin: getMargin(top: 15),
                              onTap: () {
                                onTapLogin(context);
                              }),
                          GestureDetector(
                              onTap: () {
                                onTapTxtDonthaveanaccount(context);
                              },
                              child: Padding(
                                  padding: getPadding(top: 39),
                                  child: RichText(
                                      text: TextSpan(children: [
                                        TextSpan(
                                            text:
                                                "msg_don_t_have_an_account2".tr,
                                            style: TextStyle(
                                                color: ColorConstant.black900,
                                                fontSize: getFontSize(14),
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w500)),
                                        TextSpan(
                                            text: "lbl_sign_up_now".tr,
                                            style: TextStyle(
                                                color: ColorConstant.indigo900,
                                                fontSize: getFontSize(14),
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w500))
                                      ]),
                                      textAlign: TextAlign.left)))
                        ])))));
  }

  /// Navigates to the homePageContainerScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the homePageContainerScreen.
  onTapLogin(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.homePageContainerScreen,
    );
  }

  /// Navigates to the signupScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the signupScreen.
  onTapTxtDonthaveanaccount(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.signupScreen,
    );
  }
}
