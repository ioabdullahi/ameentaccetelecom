import 'bloc/passreset_bloc.dart';
import 'models/passreset_model.dart';
import 'package:ameentaccetelecom/core/app_export.dart';
import 'package:ameentaccetelecom/widgets/custom_button.dart';
import 'package:ameentaccetelecom/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class PassresetScreen extends StatelessWidget {
  const PassresetScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<PassresetBloc>(
        create: (context) =>
            PassresetBloc(PassresetState(passresetModelObj: PassresetModel()))
              ..add(PassresetInitialEvent()),
        child: PassresetScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.blue504f,
            resizeToAvoidBottomInset: false,
            body: Container(
                width: getHorizontalSize(414),
                padding: getPadding(left: 27, top: 41, right: 27, bottom: 41),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomImageView(
                          svgPath: ImageConstant.imgArrowleft,
                          height: getVerticalSize(18),
                          width: getHorizontalSize(10),
                          onTap: () {
                            onTapImgArrowleft(context);
                          }),
                      Align(
                          alignment: Alignment.center,
                          child: Text("lbl_reset_password".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsSemiBold18)),
                      Padding(
                          padding: getPadding(left: 5, top: 34),
                          child: Text("lbl_new_password".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsMedium16)),
                      BlocSelector<PassresetBloc, PassresetState,
                              TextEditingController?>(
                          selector: (state) => state.passwordController,
                          builder: (context, passwordController) {
                            return CustomTextFormField(
                                focusNode: FocusNode(),
                                autofocus: true,
                                controller: passwordController,
                                hintText: "lbl".tr,
                                margin: getMargin(left: 5, top: 20, right: 5),
                                variant:
                                    TextFormFieldVariant.OutlineIndigo900_1,
                                shape: TextFormFieldShape.RoundedBorder10,
                                padding: TextFormFieldPadding.PaddingAll19,
                                fontStyle:
                                    TextFormFieldFontStyle.PoppinsRegular14);
                          }),
                      Padding(
                          padding: getPadding(left: 5, top: 25),
                          child: Text("msg_confirm_new_password".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsMedium16)),
                      BlocSelector<PassresetBloc, PassresetState,
                              TextEditingController?>(
                          selector: (state) => state.passwordoneController,
                          builder: (context, passwordoneController) {
                            return CustomTextFormField(
                                focusNode: FocusNode(),
                                autofocus: true,
                                controller: passwordoneController,
                                hintText: "lbl".tr,
                                margin: getMargin(
                                    left: 5, top: 21, right: 5, bottom: 5),
                                variant:
                                    TextFormFieldVariant.OutlineIndigo900_1,
                                shape: TextFormFieldShape.RoundedBorder10,
                                padding: TextFormFieldPadding.PaddingAll19,
                                fontStyle:
                                    TextFormFieldFontStyle.PoppinsRegular14,
                                textInputAction: TextInputAction.done);
                          })
                    ])),
            bottomNavigationBar: CustomButton(
                height: getVerticalSize(60),
                text: "lbl_submit".tr,
                margin: getMargin(left: 31, right: 31, bottom: 51))));
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
}
