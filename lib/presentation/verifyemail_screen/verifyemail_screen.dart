import 'bloc/verifyemail_bloc.dart';
import 'models/verifyemail_model.dart';
import 'package:ameentaccetelecom/core/app_export.dart';
import 'package:ameentaccetelecom/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class VerifyemailScreen extends StatelessWidget {
  const VerifyemailScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<VerifyemailBloc>(
        create: (context) => VerifyemailBloc(
            VerifyemailState(verifyemailModelObj: VerifyemailModel()))
          ..add(VerifyemailInitialEvent()),
        child: VerifyemailScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.blue50,
            resizeToAvoidBottomInset: false,
            body: Container(
                width: getHorizontalSize(414),
                padding: getPadding(left: 27, top: 37, right: 27, bottom: 37),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomImageView(
                          svgPath: ImageConstant.imgArrowleft,
                          height: getVerticalSize(18),
                          width: getHorizontalSize(10),
                          alignment: Alignment.centerLeft,
                          onTap: () {
                            onTapImgArrowleft(context);
                          }),
                      Padding(
                          padding: getPadding(top: 68),
                          child: Text("msg_verify_your_email".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsSemiBold18)),
                      Container(
                          width: getHorizontalSize(294),
                          margin: getMargin(left: 32, top: 18, right: 33),
                          child: RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                    text: "msg_we_sent_you_a_42".tr,
                                    style: TextStyle(
                                        color: ColorConstant.black900,
                                        fontSize: getFontSize(16),
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w400)),
                                TextSpan(
                                    text: "msg_enter_in_the".tr,
                                    style: TextStyle(
                                        color: ColorConstant.black900,
                                        fontSize: getFontSize(16),
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w600))
                              ]),
                              textAlign: TextAlign.center)),
                      Padding(
                          padding: getPadding(left: 44, top: 55, right: 43),
                          child: BlocSelector<VerifyemailBloc, VerifyemailState,
                                  TextEditingController?>(
                              selector: (state) => state.otpController,
                              builder: (context, otpController) {
                                return PinCodeTextField(
                                    appContext: context,
                                    controller: otpController,
                                    length: 4,
                                    obscureText: false,
                                    obscuringCharacter: '*',
                                    keyboardType: TextInputType.number,
                                    autoDismissKeyboard: true,
                                    enableActiveFill: true,
                                    inputFormatters: [
                                      FilteringTextInputFormatter.digitsOnly
                                    ],
                                    onChanged: (value) {
                                      otpController?.text = value;
                                    },
                                    textStyle: TextStyle(
                                        color: ColorConstant.black90060,
                                        fontSize: getFontSize(32),
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w400,
                                        letterSpacing: getHorizontalSize(0.5)),
                                    pinTheme: PinTheme(
                                        fieldHeight: getHorizontalSize(70),
                                        fieldWidth: getHorizontalSize(60),
                                        shape: PinCodeFieldShape.box,
                                        borderRadius: BorderRadius.circular(
                                            getHorizontalSize(5)),
                                        selectedFillColor:
                                            ColorConstant.blueA70019,
                                        activeFillColor:
                                            ColorConstant.blueA70019,
                                        inactiveFillColor:
                                            ColorConstant.blueA70019,
                                        inactiveColor: ColorConstant.indigo900,
                                        selectedColor: ColorConstant.indigo900,
                                        activeColor: ColorConstant.indigo900));
                              })),
                      Padding(
                          padding: getPadding(top: 57),
                          child: RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                    text: "msg_didn_t_get_the_code2".tr,
                                    style: TextStyle(
                                        color: ColorConstant.black900,
                                        fontSize: getFontSize(14),
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w400)),
                                TextSpan(
                                    text: "lbl_resend".tr,
                                    style: TextStyle(
                                        color: ColorConstant.black900,
                                        fontSize: getFontSize(14),
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w600))
                              ]),
                              textAlign: TextAlign.left)),
                      Padding(
                          padding: getPadding(top: 6),
                          child: Text("msg_expires_in_01_00".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsMedium14Indigo900)),
                      Spacer(),
                      CustomButton(
                          height: getVerticalSize(60),
                          text: "lbl_submit".tr,
                          margin: getMargin(left: 4, right: 4, bottom: 34),
                          onTap: () {
                            onTapSubmit(context);
                          })
                    ]))));
  }

  /// Navigates to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is
  /// used to build the navigation stack. When the action is triggered, this
  /// function uses the [NavigatorService] to navigate to the previous screen
  /// in the navigation stack.
  onTapImgArrowleft(BuildContext context) {
    NavigatorService.goBack();
  }

  /// Navigates to the logInScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the logInScreen.
  onTapSubmit(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.logInScreen,
    );
  }
}
