import '../models/listellipsefour_item_model.dart';
import 'package:ameentaccetelecom/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ListellipsefourItemWidget extends StatelessWidget {
  ListellipsefourItemWidget(
    this.listellipsefourItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ListellipsefourItemModel listellipsefourItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: getPadding(
        top: 7,
        bottom: 7,
      ),
      decoration: AppDecoration.white.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder8,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: getSize(
              32,
            ),
            width: getSize(
              32,
            ),
            margin: getMargin(
              top: 1,
              bottom: 1,
            ),
            decoration: BoxDecoration(
              color: ColorConstant.blueGray100,
              borderRadius: BorderRadius.circular(
                getHorizontalSize(
                  16,
                ),
              ),
            ),
          ),
          Padding(
            padding: getPadding(
              left: 16,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  listellipsefourItemModelObj.walletfundingTxt,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtDMSansMedium14,
                ),
                Text(
                  "lbl_29_07_2022".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtDMSansRegular10,
                ),
              ],
            ),
          ),
          Spacer(),
          Padding(
            padding: getPadding(
              top: 1,
              bottom: 1,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  listellipsefourItemModelObj.amountTxt,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtDMSansMedium12GreenA200,
                ),
                Padding(
                  padding: getPadding(
                    top: 2,
                  ),
                  child: Text(
                    "lbl_11_18_am".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtDMSansRegular10,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
