import 'bloc/settings_page_bloc.dart';
import 'models/settings_page_model.dart';
import 'package:ameentaccetelecom/core/app_export.dart';
import 'package:ameentaccetelecom/presentation/home_page_container1_page/home_page_container1_page.dart';
import 'package:ameentaccetelecom/widgets/app_bar/appbar_image.dart';
import 'package:ameentaccetelecom/widgets/app_bar/custom_app_bar.dart';
import 'package:ameentaccetelecom/widgets/custom_bottom_bar.dart';
import 'package:ameentaccetelecom/widgets/custom_switch.dart';
import 'package:flutter/material.dart';

class SettingsPageScreen extends StatelessWidget {
  SettingsPageScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<SettingsPageBloc>(
      create: (context) => SettingsPageBloc(SettingsPageState(
        settingsPageModelObj: SettingsPageModel(),
      ))
        ..add(SettingsPageInitialEvent()),
      child: SettingsPageScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA70001,
        body: SizedBox(
          width: getHorizontalSize(
            414,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                width: double.maxFinite,
                child: Container(
                  margin: getMargin(
                    left: 1,
                    right: 2,
                  ),
                  padding: getPadding(
                    top: 61,
                    bottom: 61,
                  ),
                  decoration: AppDecoration.fillIndigo900.copyWith(
                    borderRadius: BorderRadiusStyle.customBorderBL12,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomAppBar(
                        height: getVerticalSize(
                          171,
                        ),
                        leadingWidth: 57,
                        leading: AppbarImage(
                          height: getVerticalSize(
                            43,
                          ),
                          width: getHorizontalSize(
                            40,
                          ),
                          svgPath: ImageConstant.imgSettingsWhiteA700,
                          margin: getMargin(
                            left: 17,
                          ),
                        ),
                        title: Padding(
                          padding: getPadding(
                            left: 7,
                          ),
                          child: Text(
                            "lbl_settings2".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtDMSansMedium28.copyWith(
                              letterSpacing: getHorizontalSize(
                                0.98,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    height: getVerticalSize(
                      898,
                    ),
                    width: getHorizontalSize(
                      411,
                    ),
                    margin: getMargin(
                      left: 1,
                      right: 2,
                    ),
                    decoration: AppDecoration.white,
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        Align(
                          alignment: Alignment.topCenter,
                          child: Container(
                            height: getVerticalSize(
                              823,
                            ),
                            width: getHorizontalSize(
                              411,
                            ),
                            decoration: BoxDecoration(
                              color: ColorConstant.gray100,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                            margin: getMargin(
                              left: 16,
                              right: 16,
                            ),
                            padding: getPadding(
                              top: 24,
                              bottom: 24,
                            ),
                            decoration: AppDecoration.outlineGray80026.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder17,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                    padding: getPadding(
                                      left: 25,
                                    ),
                                    child: Row(
                                      children: [
                                        CustomImageView(
                                          imagePath: ImageConstant.imgImage4,
                                          height: getSize(
                                            40,
                                          ),
                                          width: getSize(
                                            40,
                                          ),
                                          radius: BorderRadius.circular(
                                            getHorizontalSize(
                                              20,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: getPadding(
                                            left: 12,
                                            top: 11,
                                            bottom: 4,
                                          ),
                                          child: Text(
                                            "lbl_aminu_adabanija".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtDMSansRegular18,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    top: 24,
                                  ),
                                  child: Divider(
                                    height: getVerticalSize(
                                      1,
                                    ),
                                    thickness: getVerticalSize(
                                      1,
                                    ),
                                    color: ColorConstant.gray400,
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                    padding: getPadding(
                                      left: 25,
                                      top: 25,
                                    ),
                                    child: Text(
                                      "msg_account_settings".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtDMSansRegular18Gray500,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    left: 25,
                                    top: 16,
                                    right: 25,
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding: getPadding(
                                          top: 4,
                                        ),
                                        child: Text(
                                          "lbl_edit_profile".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtDMSansRegular18,
                                        ),
                                      ),
                                      CustomImageView(
                                        svgPath: ImageConstant.imgArrowright,
                                        height: getVerticalSize(
                                          26,
                                        ),
                                        width: getHorizontalSize(
                                          24,
                                        ),
                                        margin: getMargin(
                                          bottom: 2,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    left: 25,
                                    top: 30,
                                    right: 25,
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding: getPadding(
                                          top: 3,
                                        ),
                                        child: Text(
                                          "msg_account_security".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtDMSansRegular18,
                                        ),
                                      ),
                                      CustomImageView(
                                        svgPath: ImageConstant.imgArrowright,
                                        height: getVerticalSize(
                                          26,
                                        ),
                                        width: getHorizontalSize(
                                          24,
                                        ),
                                        margin: getMargin(
                                          bottom: 1,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    left: 25,
                                    top: 31,
                                    right: 25,
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding: getPadding(
                                          top: 4,
                                        ),
                                        child: Text(
                                          "msg_manage_beneficiaries".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtDMSansRegular18,
                                        ),
                                      ),
                                      CustomImageView(
                                        svgPath: ImageConstant.imgPlus,
                                        height: getVerticalSize(
                                          26,
                                        ),
                                        width: getHorizontalSize(
                                          24,
                                        ),
                                        margin: getMargin(
                                          bottom: 2,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: getMargin(
                                    top: 30,
                                  ),
                                  padding: getPadding(
                                    left: 25,
                                    right: 25,
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                            padding: getPadding(
                                              top: 3,
                                              bottom: 1,
                                            ),
                                            child: Text(
                                              "msg_push_notifications".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style:
                                                  AppStyle.txtDMSansRegular18,
                                            ),
                                          ),
                                          BlocSelector<SettingsPageBloc,
                                              SettingsPageState, bool?>(
                                            selector: (state) =>
                                                state.isSelectedSwitch,
                                            builder:
                                                (context, isSelectedSwitch) {
                                              return CustomSwitch(
                                                value: isSelectedSwitch,
                                                onChanged: (value) {
                                                  context
                                                      .read<SettingsPageBloc>()
                                                      .add(ChangeSwitchEvent(
                                                          value: value));
                                                },
                                              );
                                            },
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          top: 33,
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Padding(
                                              padding: getPadding(
                                                top: 3,
                                                bottom: 1,
                                              ),
                                              child: Text(
                                                "lbl_dark_mode".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style:
                                                    AppStyle.txtDMSansRegular18,
                                              ),
                                            ),
                                            BlocSelector<SettingsPageBloc,
                                                SettingsPageState, bool?>(
                                              selector: (state) =>
                                                  state.isSelectedSwitch1,
                                              builder:
                                                  (context, isSelectedSwitch1) {
                                                return CustomSwitch(
                                                  value: isSelectedSwitch1,
                                                  onChanged: (value) {
                                                    context
                                                        .read<
                                                            SettingsPageBloc>()
                                                        .add(ChangeSwitch1Event(
                                                            value: value));
                                                  },
                                                );
                                              },
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                    padding: getPadding(
                                      left: 25,
                                      top: 47,
                                    ),
                                    child: Text(
                                      "lbl_more".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtDMSansRegular18Gray500,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    left: 25,
                                    top: 29,
                                    right: 27,
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding: getPadding(
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          "msg_financial_information".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtDMSansRegular18,
                                        ),
                                      ),
                                      CustomImageView(
                                        svgPath: ImageConstant.imgArrowright,
                                        height: getVerticalSize(
                                          26,
                                        ),
                                        width: getHorizontalSize(
                                          24,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    left: 25,
                                    top: 29,
                                    right: 25,
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding: getPadding(
                                          top: 2,
                                        ),
                                        child: Text(
                                          "lbl_support".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtDMSansRegular18,
                                        ),
                                      ),
                                      CustomImageView(
                                        svgPath: ImageConstant.imgArrowright,
                                        height: getVerticalSize(
                                          26,
                                        ),
                                        width: getHorizontalSize(
                                          24,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    left: 25,
                                    top: 29,
                                    right: 25,
                                    bottom: 85,
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding: getPadding(
                                          top: 2,
                                        ),
                                        child: Text(
                                          "lbl_logout".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtDMSansRegular18,
                                        ),
                                      ),
                                      CustomImageView(
                                        svgPath: ImageConstant.imgArrowright,
                                        height: getVerticalSize(
                                          26,
                                        ),
                                        width: getHorizontalSize(
                                          24,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Padding(
                            padding: getPadding(
                              bottom: 323,
                            ),
                            child: SizedBox(
                              width: getHorizontalSize(
                                379,
                              ),
                              child: Divider(
                                height: getVerticalSize(
                                  1,
                                ),
                                thickness: getVerticalSize(
                                  1,
                                ),
                                color: ColorConstant.gray400,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: CustomBottomBar(
          onChanged: (BottomBarEnum type) {
            Navigator.pushNamed(
                navigatorKey.currentContext!, getCurrentRoute(type));
          },
        ),
      ),
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.homePageContainer1Page;
      case BottomBarEnum.Services2:
        return "/";
      case BottomBarEnum.History2:
        return "/";
      case BottomBarEnum.Setting:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(
    BuildContext context,
    String currentRoute,
  ) {
    switch (currentRoute) {
      case AppRoutes.homePageContainer1Page:
        return HomePageContainer1Page.builder(context);
      default:
        return DefaultWidget();
    }
  }
}
