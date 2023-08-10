import 'package:flutter/material.dart';
import 'package:the_s_application4/core/app_export.dart';
import 'package:the_s_application4/presentation/posting_page/posting_page.dart';
import 'package:the_s_application4/widgets/custom_bottom_bar.dart';
import 'package:the_s_application4/widgets/custom_checkbox_button.dart';
import 'package:the_s_application4/widgets/custom_elevated_button.dart';
import 'package:the_s_application4/widgets/custom_icon_button.dart';

class OptionsScreen extends StatelessWidget {
  OptionsScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  bool isCheckbox = false;

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray50,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: getPadding(
                    top: 34,
                    right: 22,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Save Job",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: theme.textTheme.titleLarge,
                      ),
                      Padding(
                        padding: getPadding(
                          left: 71,
                          bottom: 10,
                        ),
                        child: Text(
                          "Delete all",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: CustomTextStyles.bodySmallOrange400,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: getMargin(
                  left: 20,
                  top: 25,
                  right: 20,
                ),
                padding: getPadding(
                  left: 20,
                  top: 16,
                  right: 20,
                  bottom: 16,
                ),
                decoration: AppDecoration.outline.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder20,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: getPadding(
                        top: 3,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomIconButton(
                            height: 40,
                            width: 40,
                            padding: getPadding(
                              all: 7,
                            ),
                            child: CustomImageView(
                              imagePath: ImageConstant.imgGoogle1,
                            ),
                          ),
                          CustomImageView(
                            svgPath: ImageConstant.imgOverflowmenuBlueGray70001,
                            height: getSize(
                              20,
                            ),
                            width: getSize(
                              20,
                            ),
                            margin: getMargin(
                              top: 10,
                              bottom: 10,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        top: 10,
                      ),
                      child: Text(
                        "UI/UX Designer",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: CustomTextStyles.titleSmallGray90003,
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        top: 2,
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Google inc",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: theme.textTheme.bodySmall,
                          ),
                          Container(
                            height: getSize(
                              2,
                            ),
                            width: getSize(
                              2,
                            ),
                            margin: getMargin(
                              left: 5,
                              top: 8,
                              bottom: 6,
                            ),
                            decoration: BoxDecoration(
                              color: appTheme.blueGray70001,
                              borderRadius: BorderRadius.circular(
                                getHorizontalSize(
                                  1,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 5,
                            ),
                            child: Text(
                              "California, USA",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: theme.textTheme.bodySmall,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        top: 18,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Opacity(
                            opacity: 0.2,
                            child: Container(
                              width: getHorizontalSize(
                                79,
                              ),
                              padding: getPadding(
                                left: 23,
                                top: 5,
                                right: 23,
                                bottom: 5,
                              ),
                              decoration: AppDecoration.txtFill.copyWith(
                                borderRadius:
                                    BorderRadiusStyle.txtRoundedBorder8,
                              ),
                              child: Text(
                                "Design",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: CustomTextStyles.bodySmall10,
                              ),
                            ),
                          ),
                          Opacity(
                            opacity: 0.2,
                            child: Container(
                              width: getHorizontalSize(
                                82,
                              ),
                              padding: getPadding(
                                left: 21,
                                top: 5,
                                right: 21,
                                bottom: 5,
                              ),
                              decoration: AppDecoration.txtFill.copyWith(
                                borderRadius:
                                    BorderRadiusStyle.txtRoundedBorder8,
                              ),
                              child: Text(
                                "Full time",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: CustomTextStyles.bodySmall10,
                              ),
                            ),
                          ),
                          Opacity(
                            opacity: 0.2,
                            child: Container(
                              width: getHorizontalSize(
                                114,
                              ),
                              padding: getPadding(
                                left: 21,
                                top: 5,
                                right: 21,
                                bottom: 5,
                              ),
                              decoration: AppDecoration.txtFill.copyWith(
                                borderRadius:
                                    BorderRadiusStyle.txtRoundedBorder8,
                              ),
                              child: Text(
                                "Senior designer",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: CustomTextStyles.bodySmall10,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        top: 15,
                        right: 2,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: getPadding(
                              top: 2,
                            ),
                            child: Text(
                              "25 minute ago",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: CustomTextStyles.bodySmallBluegray3000310,
                            ),
                          ),
                          RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: "15K",
                                  style: CustomTextStyles.titleSmallBlack900,
                                ),
                                TextSpan(
                                  text: "/",
                                  style:
                                      CustomTextStyles.labelLargeBluegray30003,
                                ),
                                TextSpan(
                                  text: "Mo",
                                  style:
                                      CustomTextStyles.bodySmallBluegray30003_1,
                                ),
                              ],
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: getVerticalSize(
                  437,
                ),
                width: getHorizontalSize(
                  374,
                ),
                margin: getMargin(
                  top: 15,
                ),
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                        margin: getMargin(
                          left: 19,
                          right: 20,
                        ),
                        padding: getPadding(
                          left: 18,
                          top: 16,
                          right: 18,
                          bottom: 16,
                        ),
                        decoration: AppDecoration.outline.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder20,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: getPadding(
                                left: 2,
                                top: 3,
                                right: 2,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Opacity(
                                    opacity: 0.3,
                                    child: CustomIconButton(
                                      height: 40,
                                      width: 40,
                                      padding: getPadding(
                                        all: 7,
                                      ),
                                      decoration:
                                          IconButtonStyleHelper.fillPink40075,
                                      child: CustomImageView(
                                        imagePath:
                                            ImageConstant.imgDribbblelogo,
                                      ),
                                    ),
                                  ),
                                  CustomImageView(
                                    svgPath: ImageConstant
                                        .imgOverflowmenuBlueGray70001,
                                    height: getSize(
                                      20,
                                    ),
                                    width: getSize(
                                      20,
                                    ),
                                    margin: getMargin(
                                      top: 10,
                                      bottom: 10,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                left: 2,
                                top: 11,
                              ),
                              child: Text(
                                "Lead Designer",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: CustomTextStyles.titleSmallBluegray900,
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                left: 2,
                                top: 1,
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Dribbble inc",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: theme.textTheme.bodySmall,
                                  ),
                                  Container(
                                    height: getSize(
                                      2,
                                    ),
                                    width: getSize(
                                      2,
                                    ),
                                    margin: getMargin(
                                      left: 5,
                                      top: 9,
                                      bottom: 5,
                                    ),
                                    decoration: BoxDecoration(
                                      color: appTheme.blueGray70001,
                                      borderRadius: BorderRadius.circular(
                                        getHorizontalSize(
                                          1,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      left: 5,
                                    ),
                                    child: Text(
                                      "California, USA",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: theme.textTheme.bodySmall,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                left: 2,
                                top: 19,
                                right: 2,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Opacity(
                                    opacity: 0.1,
                                    child: Container(
                                      width: getHorizontalSize(
                                        79,
                                      ),
                                      padding: getPadding(
                                        left: 23,
                                        top: 5,
                                        right: 23,
                                        bottom: 5,
                                      ),
                                      decoration:
                                          AppDecoration.txtFill2.copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.txtRoundedBorder8,
                                      ),
                                      child: Text(
                                        "Design",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: CustomTextStyles.bodySmall10,
                                      ),
                                    ),
                                  ),
                                  Opacity(
                                    opacity: 0.1,
                                    child: Container(
                                      width: getHorizontalSize(
                                        82,
                                      ),
                                      padding: getPadding(
                                        left: 21,
                                        top: 5,
                                        right: 21,
                                        bottom: 5,
                                      ),
                                      decoration:
                                          AppDecoration.txtFill2.copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.txtRoundedBorder8,
                                      ),
                                      child: Text(
                                        "Full time",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: CustomTextStyles.bodySmall10,
                                      ),
                                    ),
                                  ),
                                  Opacity(
                                    opacity: 0.1,
                                    child: Container(
                                      width: getHorizontalSize(
                                        114,
                                      ),
                                      padding: getPadding(
                                        left: 21,
                                        top: 5,
                                        right: 21,
                                        bottom: 5,
                                      ),
                                      decoration:
                                          AppDecoration.txtFill2.copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.txtRoundedBorder8,
                                      ),
                                      child: Text(
                                        "Senior designer",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: CustomTextStyles.bodySmall10,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                left: 2,
                                top: 15,
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
                                      "25 minute ago",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: CustomTextStyles
                                          .bodySmallBluegray3000310,
                                    ),
                                  ),
                                  RichText(
                                    text: TextSpan(
                                      children: [
                                        TextSpan(
                                          text: "20K",
                                          style: CustomTextStyles
                                              .titleSmallBlack900,
                                        ),
                                        TextSpan(
                                          text: "/",
                                          style: CustomTextStyles
                                              .labelLargeBluegray30003,
                                        ),
                                        TextSpan(
                                          text: "Mo",
                                          style: CustomTextStyles
                                              .bodySmallBluegray30003_1,
                                        ),
                                      ],
                                    ),
                                    textAlign: TextAlign.left,
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
                      child: Container(
                        margin: getMargin(
                          left: 19,
                          right: 20,
                          bottom: 16,
                        ),
                        padding: getPadding(
                          left: 20,
                          top: 16,
                          right: 20,
                          bottom: 16,
                        ),
                        decoration: AppDecoration.outline.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder20,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: getPadding(
                                top: 3,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  CustomIconButton(
                                    height: 40,
                                    width: 40,
                                    padding: getPadding(
                                      all: 7,
                                    ),
                                    decoration: IconButtonStyleHelper
                                        .fillOnErrorContainerTL20,
                                    child: CustomImageView(
                                      imagePath: ImageConstant.imgTwitterlogo,
                                    ),
                                  ),
                                  CustomImageView(
                                    svgPath: ImageConstant
                                        .imgOverflowmenuBlueGray70001,
                                    height: getSize(
                                      20,
                                    ),
                                    width: getSize(
                                      20,
                                    ),
                                    margin: getMargin(
                                      top: 10,
                                      bottom: 10,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                top: 9,
                              ),
                              child: Text(
                                "UX Researcher",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: CustomTextStyles.titleSmallBluegray900,
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                top: 3,
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Twitter inc",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: theme.textTheme.bodySmall,
                                  ),
                                  Container(
                                    height: getSize(
                                      2,
                                    ),
                                    width: getSize(
                                      2,
                                    ),
                                    margin: getMargin(
                                      left: 5,
                                      top: 9,
                                      bottom: 5,
                                    ),
                                    decoration: BoxDecoration(
                                      color: appTheme.blueGray70001,
                                      borderRadius: BorderRadius.circular(
                                        getHorizontalSize(
                                          1,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      left: 5,
                                    ),
                                    child: Text(
                                      "California, USA",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: theme.textTheme.bodySmall,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                top: 19,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Opacity(
                                    opacity: 0.2,
                                    child: Container(
                                      padding: getPadding(
                                        left: 23,
                                        top: 5,
                                        right: 23,
                                        bottom: 5,
                                      ),
                                      decoration: AppDecoration.fill18.copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder6,
                                      ),
                                      child: Padding(
                                        padding: getPadding(
                                          top: 1,
                                        ),
                                        child: Text(
                                          "Design",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: CustomTextStyles.bodySmall10,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Opacity(
                                    opacity: 0.2,
                                    child: CustomElevatedButton(
                                      text: "Full time",
                                      buttonStyle: CustomButtonStyles
                                          .fillBluegray1006c
                                          .copyWith(
                                              fixedSize: MaterialStateProperty
                                                  .all<Size>(Size(
                                        getHorizontalSize(
                                          82,
                                        ),
                                        getVerticalSize(
                                          26,
                                        ),
                                      ))),
                                      buttonTextStyle:
                                          CustomTextStyles.bodySmall10,
                                    ),
                                  ),
                                  Opacity(
                                    opacity: 0.2,
                                    child: CustomElevatedButton(
                                      text: "Senior designer",
                                      buttonStyle: CustomButtonStyles
                                          .fillBluegray1006c
                                          .copyWith(
                                              fixedSize: MaterialStateProperty
                                                  .all<Size>(Size(
                                        getHorizontalSize(
                                          114,
                                        ),
                                        getVerticalSize(
                                          26,
                                        ),
                                      ))),
                                      buttonTextStyle:
                                          CustomTextStyles.bodySmall10,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                top: 15,
                                right: 3,
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
                                      "25 minute ago",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: CustomTextStyles
                                          .bodySmallBluegray3000310,
                                    ),
                                  ),
                                  RichText(
                                    text: TextSpan(
                                      children: [
                                        TextSpan(
                                          text: "12K",
                                          style: CustomTextStyles
                                              .titleSmallBlack900,
                                        ),
                                        TextSpan(
                                          text: "/",
                                          style: CustomTextStyles
                                              .labelLargeBluegray30003,
                                        ),
                                        TextSpan(
                                          text: "Mo",
                                          style: CustomTextStyles
                                              .bodySmallBluegray30003_1,
                                        ),
                                      ],
                                    ),
                                    textAlign: TextAlign.left,
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
                      child: Container(
                        padding: getPadding(
                          left: 19,
                          top: 30,
                          right: 19,
                          bottom: 30,
                        ),
                        decoration: AppDecoration.fill10.copyWith(
                          borderRadius: BorderRadiusStyle.customBorderTL20,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CustomImageView(
                              svgPath: ImageConstant.imgVector56Gray700,
                              height: getVerticalSize(
                                4,
                              ),
                              width: getHorizontalSize(
                                30,
                              ),
                              alignment: Alignment.center,
                            ),
                            CustomCheckboxButton(
                              text: "Send message",
                              value: isCheckbox,
                              margin: getMargin(
                                left: 16,
                                top: 46,
                              ),
                              padding: getPadding(
                                top: 1,
                                bottom: 1,
                              ),
                              textStyle:
                                  CustomTextStyles.bodyMediumDMSansGray90004,
                              onChange: (value) {
                                isCheckbox = value;
                              },
                            ),
                            Padding(
                              padding: getPadding(
                                left: 16,
                                top: 25,
                              ),
                              child: Row(
                                children: [
                                  CustomImageView(
                                    svgPath: ImageConstant.imgReplyBlueGray700,
                                    height: getSize(
                                      24,
                                    ),
                                    width: getSize(
                                      24,
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      left: 15,
                                      top: 2,
                                      bottom: 2,
                                    ),
                                    child: Text(
                                      "Shared",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: CustomTextStyles
                                          .bodyMediumDMSansGray90004,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                left: 16,
                                top: 25,
                              ),
                              child: Row(
                                children: [
                                  CustomImageView(
                                    svgPath: ImageConstant.imgTrashBlueGray700,
                                    height: getSize(
                                      24,
                                    ),
                                    width: getSize(
                                      24,
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      left: 15,
                                      top: 2,
                                      bottom: 2,
                                    ),
                                    child: Text(
                                      "Delete",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: CustomTextStyles
                                          .bodyMediumDMSansGray90004,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            CustomElevatedButton(
                              text: "Apply",
                              margin: getMargin(
                                left: 1,
                                top: 12,
                                bottom: 5,
                              ),
                              leftIcon: Container(
                                margin: getMargin(
                                  right: 15,
                                ),
                                child: CustomImageView(
                                  svgPath: ImageConstant
                                      .imgCheckmarkOnprimarycontainer,
                                ),
                              ),
                              buttonStyle: CustomButtonStyles.fillPrimary
                                  .copyWith(
                                      fixedSize:
                                          MaterialStateProperty.all<Size>(Size(
                                double.maxFinite,
                                getVerticalSize(
                                  50,
                                ),
                              ))),
                              buttonTextStyle: CustomTextStyles
                                  .bodyMediumDMSansOnPrimaryContainer_1,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
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
      case BottomBarEnum.Homebluegray30005:
        return AppRoutes.postingPage;
      case BottomBarEnum.Car:
        return "/";
      case BottomBarEnum.Infogray90002:
        return "/";
      case BottomBarEnum.Bookmarkbluegray30006:
        return "/";
      case BottomBarEnum.Bookmarkbluegray3000624x24:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.postingPage:
        return PostingPage();
      default:
        return DefaultWidget();
    }
  }
}
