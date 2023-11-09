import 'bloc/services_page_bloc.dart';
import 'models/services_page_model.dart';
import 'package:ameentaccetelecom/core/app_export.dart';
import 'package:ameentaccetelecom/presentation/home_page_container1_page/home_page_container1_page.dart';
import 'package:ameentaccetelecom/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';

class ServicesPageScreen extends StatelessWidget {
  ServicesPageScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<ServicesPageBloc>(
      create: (context) => ServicesPageBloc(ServicesPageState(
        servicesPageModelObj: ServicesPageModel(),
      ))
        ..add(ServicesPageInitialEvent()),
      child: ServicesPageScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ServicesPageBloc, ServicesPageState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: ColorConstant.whiteA70001,
            body: SizedBox(
              width: size.width,
              child: SingleChildScrollView(
                child: Container(
                  decoration: AppDecoration.white,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: double.maxFinite,
                        child: Container(
                          width: getHorizontalSize(
                            411,
                          ),
                          margin: getMargin(
                            right: 3,
                          ),
                          padding: getPadding(
                            left: 22,
                            top: 2,
                            right: 22,
                            bottom: 2,
                          ),
                          decoration: AppDecoration.fillIndigo900.copyWith(
                            borderRadius: BorderRadiusStyle.customBorderBL12,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Padding(
                                padding: getPadding(
                                  top: 107,
                                ),
                                child: Text(
                                  "lbl_services".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtDMSansMedium28.copyWith(
                                    letterSpacing: getHorizontalSize(
                                      0.98,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        margin: getMargin(
                          left: 22,
                          top: 33,
                          right: 21,
                        ),
                        padding: getPadding(
                          left: 8,
                          top: 23,
                          right: 8,
                          bottom: 23,
                        ),
                        decoration: AppDecoration.fillIndigo900.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder17,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: getPadding(
                                top: 4,
                              ),
                              child: Text(
                                "lbl_purchase_data".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtDMSansRegular18WhiteA700,
                              ),
                            ),
                            CustomImageView(
                              svgPath: ImageConstant.imgArrowrightWhiteA700,
                              height: getVerticalSize(
                                26,
                              ),
                              width: getHorizontalSize(
                                25,
                              ),
                              margin: getMargin(
                                top: 1,
                                right: 3,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: getMargin(
                          left: 22,
                          top: 33,
                          right: 21,
                        ),
                        padding: getPadding(
                          left: 7,
                          top: 22,
                          right: 7,
                          bottom: 22,
                        ),
                        decoration: AppDecoration.fillIndigo900.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder17,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: getPadding(
                                top: 1,
                                bottom: 5,
                              ),
                              child: Text(
                                "msg_purchase_airtime".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtDMSansRegular18WhiteA700,
                              ),
                            ),
                            CustomImageView(
                              svgPath: ImageConstant.imgArrowrightWhiteA700,
                              height: getVerticalSize(
                                26,
                              ),
                              width: getHorizontalSize(
                                24,
                              ),
                              margin: getMargin(
                                right: 3,
                                bottom: 4,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: getMargin(
                          left: 22,
                          top: 33,
                          right: 21,
                        ),
                        padding: getPadding(
                          left: 21,
                          top: 23,
                          right: 21,
                          bottom: 23,
                        ),
                        decoration: AppDecoration.fillIndigo900.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder17,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: getPadding(
                                top: 4,
                              ),
                              child: Text(
                                "lbl_tv_subscription".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtDMSansRegular18WhiteA700,
                              ),
                            ),
                            CustomImageView(
                              svgPath: ImageConstant.imgArrowrightWhiteA700,
                              height: getVerticalSize(
                                26,
                              ),
                              width: getHorizontalSize(
                                24,
                              ),
                              margin: getMargin(
                                right: 2,
                                bottom: 2,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: getMargin(
                          left: 22,
                          top: 33,
                          right: 21,
                        ),
                        padding: getPadding(
                          left: 20,
                          top: 22,
                          right: 20,
                          bottom: 22,
                        ),
                        decoration: AppDecoration.fillIndigo900.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder17,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: getPadding(
                                top: 4,
                                bottom: 2,
                              ),
                              child: Text(
                                "msg_electricity_payment2".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtDMSansRegular18WhiteA700,
                              ),
                            ),
                            CustomImageView(
                              svgPath: ImageConstant.imgArrowrightWhiteA700,
                              height: getVerticalSize(
                                26,
                              ),
                              width: getHorizontalSize(
                                24,
                              ),
                              margin: getMargin(
                                right: 2,
                                bottom: 4,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: getMargin(
                          left: 22,
                          top: 33,
                          right: 21,
                        ),
                        padding: getPadding(
                          left: 20,
                          top: 23,
                          right: 20,
                          bottom: 23,
                        ),
                        decoration: AppDecoration.fillIndigo900.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder17,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: getPadding(
                                top: 4,
                              ),
                              child: Text(
                                "lbl_epin_purchase".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtDMSansRegular18WhiteA700,
                              ),
                            ),
                            CustomImageView(
                              svgPath: ImageConstant.imgArrowrightWhiteA700,
                              height: getVerticalSize(
                                26,
                              ),
                              width: getHorizontalSize(
                                24,
                              ),
                              margin: getMargin(
                                top: 1,
                                right: 2,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: getMargin(
                          left: 22,
                          top: 33,
                          right: 21,
                          bottom: 101,
                        ),
                        padding: getPadding(
                          left: 20,
                          top: 22,
                          right: 20,
                          bottom: 22,
                        ),
                        decoration: AppDecoration.fillIndigo900.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder17,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: getPadding(
                                top: 2,
                                bottom: 4,
                              ),
                              child: Text(
                                "lbl_utilities".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtDMSansRegular18WhiteA700,
                              ),
                            ),
                            CustomImageView(
                              svgPath: ImageConstant.imgArrowrightWhiteA700,
                              height: getVerticalSize(
                                26,
                              ),
                              width: getHorizontalSize(
                                24,
                              ),
                              margin: getMargin(
                                right: 2,
                                bottom: 4,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
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
      },
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
