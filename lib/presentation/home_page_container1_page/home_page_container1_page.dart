import '../home_page_container1_page/widgets/listellipsefour_item_widget.dart';
import 'bloc/home_page_container1_bloc.dart';
import 'models/home_page_container1_model.dart';
import 'models/listellipsefour_item_model.dart';
import 'package:ameentaccetelecom/core/app_export.dart';
import 'package:ameentaccetelecom/widgets/app_bar/appbar_image.dart';
import 'package:ameentaccetelecom/widgets/app_bar/custom_app_bar.dart';
import 'package:ameentaccetelecom/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class HomePageContainer1Page extends StatelessWidget {
  const HomePageContainer1Page({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<HomePageContainer1Bloc>(
      create: (context) => HomePageContainer1Bloc(HomePageContainer1State(
        homePageContainer1ModelObj: HomePageContainer1Model(),
      ))
        ..add(HomePageContainer1InitialEvent()),
      child: HomePageContainer1Page(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA70001,
        appBar: CustomAppBar(
          height: getVerticalSize(
            47,
          ),
          leadingWidth: 51,
          leading: AppbarImage(
            height: getSize(
              25,
            ),
            width: getSize(
              25,
            ),
            svgPath: ImageConstant.imgCategoryIndigo900,
            margin: getMargin(
              left: 26,
              top: 11,
              bottom: 11,
            ),
          ),
          actions: [
            AppbarImage(
              height: getSize(
                39,
              ),
              width: getSize(
                39,
              ),
              svgPath: ImageConstant.imgGroup28,
              margin: getMargin(
                left: 27,
                top: 4,
                right: 27,
                bottom: 4,
              ),
            ),
          ],
        ),
        body: SizedBox(
          width: size.width,
          child: SingleChildScrollView(
            padding: getPadding(
              top: 10,
            ),
            child: Padding(
              padding: getPadding(
                left: 26,
                right: 25,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: getPadding(
                        left: 1,
                      ),
                      child: Text(
                        "lbl_hello_aminu2".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtPoppinsBold24Black900,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: getPadding(
                        left: 1,
                        top: 17,
                      ),
                      child: Text(
                        "msg_what_do_you_want".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtPoppinsMedium1548,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: double.maxFinite,
                    child: Container(
                      margin: getMargin(
                        left: 1,
                        top: 13,
                      ),
                      padding: getPadding(
                        left: 31,
                        top: 22,
                        right: 31,
                        bottom: 22,
                      ),
                      decoration: AppDecoration.fillIndigo900.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder17,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            margin: getMargin(
                              right: 3,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadiusStyle.roundedBorder17,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder17,
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadiusStyle.circleBorder8,
                                        ),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Text(
                                              "lbl_wallet_balance".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style:
                                                  AppStyle.txtDMSansRegular12,
                                            ),
                                            CustomImageView(
                                              svgPath:
                                                  ImageConstant.imgDashboard,
                                              height: getSize(
                                                14,
                                              ),
                                              width: getSize(
                                                14,
                                              ),
                                              radius: BorderRadius.circular(
                                                getHorizontalSize(
                                                  7,
                                                ),
                                              ),
                                              margin: getMargin(
                                                left: 8,
                                                top: 1,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          top: 2,
                                        ),
                                        child: Text(
                                          "lbl_ngn_2000_00".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtDMSansMedium20,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                CustomImageView(
                                  imagePath: ImageConstant.imgTopuppayment30x30,
                                  height: getSize(
                                    30,
                                  ),
                                  width: getSize(
                                    30,
                                  ),
                                  radius: BorderRadius.circular(
                                    getHorizontalSize(
                                      15,
                                    ),
                                  ),
                                  margin: getMargin(
                                    top: 8,
                                    bottom: 7,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: getMargin(
                              top: 25,
                              right: 9,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadiusStyle.roundedBorder17,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  margin: getMargin(
                                    bottom: 1,
                                  ),
                                  decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder17,
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      CustomIconButton(
                                        height: 50,
                                        width: 50,
                                        child: CustomImageView(
                                          imagePath:
                                              ImageConstant.imgFrame228550x50,
                                        ),
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          top: 5,
                                        ),
                                        child: Text(
                                          "lbl_fund_wallet".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtDMSansMedium12,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: getMargin(
                                    bottom: 1,
                                  ),
                                  decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder17,
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      CustomIconButton(
                                        height: 50,
                                        width: 50,
                                        child: CustomImageView(
                                          imagePath:
                                              ImageConstant.imgFrame228750x50,
                                        ),
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          top: 5,
                                        ),
                                        child: Text(
                                          "lbl_transfer".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtDMSansMedium12,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder17,
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      CustomIconButton(
                                        height: 50,
                                        width: 50,
                                        child: CustomImageView(
                                          imagePath:
                                              ImageConstant.imgFrame228650x50,
                                        ),
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          top: 7,
                                        ),
                                        child: Text(
                                          "lbl_help_desk".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtDMSansMedium12,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder17,
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      CustomIconButton(
                                        height: 50,
                                        width: 50,
                                        child: CustomImageView(
                                          imagePath:
                                              ImageConstant.imgFrame228850x50,
                                        ),
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          top: 6,
                                        ),
                                        child: Text(
                                          "lbl_more".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtDMSansMedium12,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 20,
                      right: 1,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "lbl_quick_actions".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtPoppinsBold17,
                        ),
                        Padding(
                          padding: getPadding(
                            top: 1,
                          ),
                          child: Text(
                            "lbl_view_all".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtPoppinsMedium1548Black9008701,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 18,
                      top: 11,
                      right: 17,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          padding: getPadding(
                            left: 24,
                            right: 24,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgTermsandconditions,
                                height: getSize(
                                  30,
                                ),
                                width: getSize(
                                  30,
                                ),
                                margin: getMargin(
                                  top: 12,
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  top: 12,
                                ),
                                child: Text(
                                  "lbl_buy_data".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtDMSansMedium12Indigo900,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: getMargin(
                            left: 12,
                            bottom: 1,
                          ),
                          padding: getPadding(
                            left: 29,
                            right: 29,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgVoucher,
                                height: getSize(
                                  30,
                                ),
                                width: getSize(
                                  30,
                                ),
                                margin: getMargin(
                                  top: 12,
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  top: 10,
                                ),
                                child: Text(
                                  "lbl_airtime".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtDMSansMedium12Indigo900,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: getMargin(
                            left: 12,
                          ),
                          padding: getPadding(
                            left: 5,
                            right: 5,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgTvshow,
                                height: getSize(
                                  30,
                                ),
                                width: getSize(
                                  30,
                                ),
                                margin: getMargin(
                                  top: 12,
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  top: 12,
                                ),
                                child: Text(
                                  "lbl_tv_subscription".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtDMSansMedium12Indigo900,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 13,
                      top: 13,
                      right: 17,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgVoltage,
                              height: getSize(
                                30,
                              ),
                              width: getSize(
                                30,
                              ),
                              margin: getMargin(
                                top: 12,
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                top: 12,
                              ),
                              child: Text(
                                "msg_electricity_payment".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtDMSansMedium12Indigo900,
                              ),
                            ),
                          ],
                        ),
                        Container(
                          margin: getMargin(
                            left: 6,
                            bottom: 1,
                          ),
                          padding: getPadding(
                            left: 10,
                            right: 10,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgOnetimepassword,
                                height: getSize(
                                  30,
                                ),
                                width: getSize(
                                  30,
                                ),
                                margin: getMargin(
                                  top: 12,
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  top: 10,
                                ),
                                child: Text(
                                  "lbl_epin_purchase".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtDMSansMedium12Indigo900,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: getMargin(
                            left: 12,
                          ),
                          padding: getPadding(
                            left: 35,
                            right: 35,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgForwardbutton,
                                height: getSize(
                                  30,
                                ),
                                width: getSize(
                                  30,
                                ),
                                margin: getMargin(
                                  top: 12,
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  top: 11,
                                ),
                                child: Text(
                                  "lbl_more".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtDMSansMedium12Indigo900,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 18,
                      top: 35,
                      right: 17,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: getPadding(
                            top: 1,
                            bottom: 1,
                          ),
                          child: Text(
                            "msg_recent_transaction".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtDMSansMedium16,
                          ),
                        ),
                        Text(
                          "lbl_view_all".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtPoppinsMedium1548Black9008701,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 18,
                      top: 11,
                      right: 17,
                    ),
                    child: BlocSelector<HomePageContainer1Bloc,
                        HomePageContainer1State, HomePageContainer1Model?>(
                      selector: (state) => state.homePageContainer1ModelObj,
                      builder: (context, homePageContainer1ModelObj) {
                        return ListView.separated(
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          separatorBuilder: (
                            context,
                            index,
                          ) {
                            return SizedBox(
                              height: getVerticalSize(
                                10,
                              ),
                            );
                          },
                          itemCount: homePageContainer1ModelObj
                                  ?.listellipsefourItemList.length ??
                              0,
                          itemBuilder: (context, index) {
                            ListellipsefourItemModel model =
                                homePageContainer1ModelObj
                                        ?.listellipsefourItemList[index] ??
                                    ListellipsefourItemModel();
                            return ListellipsefourItemWidget(
                              model,
                            );
                          },
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
