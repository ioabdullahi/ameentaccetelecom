import 'bloc/welcomthree_bloc.dart';
import 'models/welcomthree_model.dart';
import 'package:ameentaccetelecom/core/app_export.dart';
import 'package:ameentaccetelecom/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class WelcomthreeScreen extends StatelessWidget {
  const WelcomthreeScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<WelcomthreeBloc>(
        create: (context) => WelcomthreeBloc(
            WelcomthreeState(welcomthreeModelObj: WelcomthreeModel()))
          ..add(WelcomthreeInitialEvent()),
        child: WelcomthreeScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WelcomthreeBloc, WelcomthreeState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              backgroundColor: ColorConstant.blue50,
              body: Container(
                  width: double.maxFinite,
                  padding: getPadding(left: 20, top: 40, right: 20, bottom: 40),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgImage3,
                            height: getSize(300),
                            width: getSize(300),
                            margin: getMargin(top: 1)),
                        Container(
                            width: getHorizontalSize(324),
                            margin: getMargin(left: 12, top: 41, right: 13),
                            child: Text("msg_we_are_fast_safe".tr,
                                maxLines: null,
                                textAlign: TextAlign.center,
                                style: AppStyle.txtPoppinsBold30)),
                        Container(
                            width: getHorizontalSize(285),
                            margin: getMargin(left: 28, right: 36),
                            child: Text("msg_our_services_delivery".tr,
                                maxLines: null,
                                textAlign: TextAlign.center,
                                style: AppStyle.txtPoppinsMedium20)),
                        CustomButton(
                            height: getVerticalSize(60),
                            text: "lbl_create_account".tr,
                            margin: getMargin(left: 94, top: 98),
                            variant: ButtonVariant.FillIndigo900d8,
                            shape: ButtonShape.RoundedBorder20,
                            padding: ButtonPadding.PaddingAll12,
                            fontStyle: ButtonFontStyle.PoppinsSemiBold24,
                            onTap: () {
                              onTapCreateaccount(context);
                            },
                            alignment: Alignment.centerRight),
                        CustomImageView(
                            svgPath: ImageConstant.imgFrame2,
                            height: getVerticalSize(12),
                            width: getHorizontalSize(150),
                            margin: getMargin(top: 60))
                      ]))));
    });
  }

  /// Navigates to the signupScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the signupScreen.
  onTapCreateaccount(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.signupScreen,
    );
  }
}
