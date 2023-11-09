import 'bloc/welcomeone_bloc.dart';
import 'models/welcomeone_model.dart';
import 'package:ameentaccetelecom/core/app_export.dart';
import 'package:ameentaccetelecom/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class WelcomeoneScreen extends StatelessWidget {
  const WelcomeoneScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<WelcomeoneBloc>(
        create: (context) => WelcomeoneBloc(
            WelcomeoneState(welcomeoneModelObj: WelcomeoneModel()))
          ..add(WelcomeoneInitialEvent()),
        child: WelcomeoneScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WelcomeoneBloc, WelcomeoneState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              extendBody: true,
              extendBodyBehindAppBar: true,
              backgroundColor: ColorConstant.blue50,
              body: Container(
                  width: size.width,
                  height: size.height,
                  decoration: BoxDecoration(
                      color: ColorConstant.blue50,
                      image: DecorationImage(
                          image: AssetImage(ImageConstant.imgWelcomeone),
                          fit: BoxFit.cover)),
                  child: Container(
                      width: double.maxFinite,
                      padding:
                          getPadding(left: 20, top: 40, right: 20, bottom: 40),
                      child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text("lbl_welcome".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtPoppinsSemiBold64),
                            Padding(
                                padding: getPadding(left: 11),
                                child: Text("msg_to_ameentaccetelecom".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtPoppinsMedium24)),
                            Spacer(),
                            CustomButton(
                                height: getVerticalSize(60),
                                text: "msg_lets_get_started".tr,
                                margin: getMargin(left: 96),
                                variant: ButtonVariant.FillIndigo900d8,
                                shape: ButtonShape.RoundedBorder20,
                                padding: ButtonPadding.PaddingAll12,
                                fontStyle: ButtonFontStyle.PoppinsSemiBold24,
                                onTap: () {
                                  onTapLetsget(context);
                                },
                                alignment: Alignment.centerRight),
                            Align(
                                alignment: Alignment.centerRight,
                                child: GestureDetector(
                                    onTap: () {
                                      onTapTxtSkip(context);
                                    },
                                    child: Padding(
                                        padding: getPadding(top: 14, right: 18),
                                        child: Text("lbl_skip".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtPoppinsSemiBold24)))),
                            CustomImageView(
                                svgPath: ImageConstant.imgGroup2,
                                height: getVerticalSize(12),
                                width: getHorizontalSize(150),
                                margin: getMargin(left: 84, top: 4))
                          ])))));
    });
  }

  /// Navigates to the welcometwoScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the welcometwoScreen.
  onTapLetsget(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.welcometwoScreen,
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
