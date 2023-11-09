import 'bloc/welcometwo_bloc.dart';
import 'models/welcometwo_model.dart';
import 'package:ameentaccetelecom/core/app_export.dart';
import 'package:ameentaccetelecom/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class WelcometwoScreen extends StatelessWidget {
  const WelcometwoScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<WelcometwoBloc>(
        create: (context) => WelcometwoBloc(
            WelcometwoState(welcometwoModelObj: WelcometwoModel()))
          ..add(WelcometwoInitialEvent()),
        child: WelcometwoScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WelcometwoBloc, WelcometwoState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              backgroundColor: ColorConstant.blue50,
              body: Container(
                  width: double.maxFinite,
                  padding: getPadding(top: 40, bottom: 40),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgImage1,
                            height: getVerticalSize(136),
                            width: getHorizontalSize(390),
                            margin: getMargin(top: 82)),
                        Container(
                            width: getHorizontalSize(240),
                            margin: getMargin(top: 80),
                            child: Text("msg_we_re_glad_that".tr,
                                maxLines: null,
                                textAlign: TextAlign.center,
                                style: AppStyle.txtPoppinsBold30)),
                        Container(
                            width: getHorizontalSize(360),
                            margin: getMargin(left: 14, right: 15),
                            child: Text("msg_ameentaccetelecom2".tr,
                                maxLines: null,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtPoppinsMedium20)),
                        CustomButton(
                            height: getVerticalSize(60),
                            width: getHorizontalSize(193),
                            text: "lbl_continue".tr,
                            margin: getMargin(top: 63, right: 20),
                            variant: ButtonVariant.FillIndigo900d8,
                            shape: ButtonShape.RoundedBorder20,
                            padding: ButtonPadding.PaddingAll12,
                            fontStyle: ButtonFontStyle.PoppinsSemiBold24,
                            onTap: () {
                              onTapContinue(context);
                            },
                            alignment: Alignment.centerRight),
                        Align(
                            alignment: Alignment.centerRight,
                            child: GestureDetector(
                                onTap: () {
                                  onTapTxtSkip(context);
                                },
                                child: Padding(
                                    padding: getPadding(top: 38, right: 38),
                                    child: Text("lbl_skip".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtPoppinsSemiBold24Indigo900)))),
                        CustomImageView(
                            svgPath: ImageConstant.imgFrame2Indigo9000112x150,
                            height: getVerticalSize(12),
                            width: getHorizontalSize(150),
                            margin: getMargin(top: 4))
                      ]))));
    });
  }

  /// Navigates to the welcomthreeScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the welcomthreeScreen.
  onTapContinue(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.welcomthreeScreen,
    );
  }

  /// Navigates to the logInScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the logInScreen.
  onTapTxtSkip(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.logInScreen,
    );
  }
}
