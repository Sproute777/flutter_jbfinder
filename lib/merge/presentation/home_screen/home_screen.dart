import 'package:flutter/material.dart';
import 'package:the_s_application4/core/app_export.dart';
import 'package:the_s_application4/presentation/posting_page/posting_page.dart';
import 'package:the_s_application4/widgets/custom_bottom_bar.dart';
import 'package:the_s_application4/widgets/custom_elevated_button.dart';
import 'package:the_s_application4/widgets/custom_icon_button.dart';
import 'package:the_s_application4/widgets/custom_text_form_field.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  TextEditingController seniordesignerController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray50,
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          padding: getPadding(
            left: 20,
            top: 5,
            right: 20,
            bottom: 5,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: getVerticalSize(
                  239,
                ),
                width: getHorizontalSize(
                  329,
                ),
                margin: getMargin(
                  left: 3,
                  top: 40,
                ),
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: getPadding(
                          top: 17,
                        ),
                        child: Text(
                          "Hello Orlando Diggs.",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: CustomTextStyles.titleLargeGray90002,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: SizedBox(
                        height: getVerticalSize(
                          181,
                        ),
                        width: getHorizontalSize(
                          329,
                        ),
                        child: Stack(
                          alignment: Alignment.centerRight,
                          children: [
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Container(
                                padding: getPadding(
                                  left: 17,
                                  top: 23,
                                  right: 17,
                                  bottom: 23,
                                ),
                                decoration: AppDecoration.fill1.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder6,
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      "50% off",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: CustomTextStyles
                                          .titleMediumOnPrimaryContainer,
                                    ),
                                    Text(
                                      "take any courses",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: CustomTextStyles
                                          .bodyLargeOnPrimaryContainer,
                                    ),
                                    CustomElevatedButton(
                                      text: "Join Now",
                                      margin: getMargin(
                                        top: 15,
                                        bottom: 7,
                                      ),
                                      buttonStyle: CustomButtonStyles
                                          .fillOrange400
                                          .copyWith(
                                              fixedSize: MaterialStateProperty
                                                  .all<Size>(Size(
                                        getHorizontalSize(
                                          90,
                                        ),
                                        getVerticalSize(
                                          26,
                                        ),
                                      ))),
                                      buttonTextStyle: CustomTextStyles
                                          .labelLargeOnPrimaryContainerMedium,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.img52521919mento,
                              height: getVerticalSize(
                                181,
                              ),
                              width: getHorizontalSize(
                                169,
                              ),
                              radius: BorderRadius.circular(
                                getHorizontalSize(
                                  6,
                                ),
                              ),
                              alignment: Alignment.centerRight,
                            ),
                          ],
                        ),
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgProfile,
                      height: getSize(
                        36,
                      ),
                      width: getSize(
                        36,
                      ),
                      alignment: Alignment.topRight,
                      margin: getMargin(
                        right: 7,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 3,
                  top: 23,
                ),
                child: Text(
                  "Find Your Job",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: CustomTextStyles.titleMediumBlack900,
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 3,
                  top: 31,
                  right: 6,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: getPadding(
                        left: 36,
                        top: 37,
                        right: 36,
                        bottom: 37,
                      ),
                      decoration: AppDecoration.fill2.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder6,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgHeadhunting1,
                            height: getSize(
                              34,
                            ),
                            width: getSize(
                              34,
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              top: 13,
                            ),
                            child: Text(
                              "44.5k",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: CustomTextStyles.titleMediumGray90002,
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              top: 5,
                              bottom: 2,
                            ),
                            child: Text(
                              "Remote Job",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: CustomTextStyles.bodyMediumDMSansGray90002,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          width: getHorizontalSize(
                            156,
                          ),
                          padding: getPadding(
                            left: 46,
                            top: 13,
                            right: 46,
                            bottom: 13,
                          ),
                          decoration: AppDecoration.fill3.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder6,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: getPadding(
                                  left: 5,
                                  top: 3,
                                ),
                                child: Text(
                                  "66.8k",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: CustomTextStyles.titleMediumGray90002,
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  top: 4,
                                ),
                                child: Text(
                                  "Full Time",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: CustomTextStyles
                                      .bodyMediumDMSansGray90002,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: getHorizontalSize(
                            156,
                          ),
                          margin: getMargin(
                            top: 20,
                          ),
                          padding: getPadding(
                            left: 43,
                            top: 13,
                            right: 43,
                            bottom: 13,
                          ),
                          decoration: AppDecoration.fill4.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder6,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: getPadding(
                                  left: 8,
                                  top: 3,
                                ),
                                child: Text(
                                  "38.9k",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: CustomTextStyles.titleMediumGray90002,
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  top: 4,
                                ),
                                child: Text(
                                  "Part Time",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: CustomTextStyles
                                      .bodyMediumDMSansGray90002,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 18,
                ),
                child: Text(
                  "Recent Job List",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: theme.textTheme.titleMedium,
                ),
              ),
              Container(
                margin: getMargin(
                  top: 16,
                ),
                padding: getPadding(
                  left: 19,
                  top: 15,
                  right: 19,
                  bottom: 15,
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
                        left: 1,
                        top: 4,
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomIconButton(
                            height: 40,
                            width: 40,
                            padding: getPadding(
                              all: 8,
                            ),
                            decoration: IconButtonStyleHelper.fillDeeppurple100,
                            child: CustomImageView(
                              svgPath: ImageConstant.imgFire,
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 10,
                              top: 2,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  "Product Designer",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: theme.textTheme.titleSmall,
                                ),
                                Padding(
                                  padding: getPadding(
                                    top: 2,
                                  ),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                              ],
                            ),
                          ),
                          Spacer(),
                          CustomImageView(
                            svgPath: ImageConstant.imgBookmark,
                            height: getSize(
                              24,
                            ),
                            width: getSize(
                              24,
                            ),
                            margin: getMargin(
                              bottom: 15,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 1,
                        top: 21,
                      ),
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "15K",
                              style:
                                  CustomTextStyles.titleSmallOpenSansSemiBold,
                            ),
                            TextSpan(
                              text: "/",
                              style: CustomTextStyles
                                  .labelLargeOpenSansBluegray30003,
                            ),
                            TextSpan(
                              text: "Mo",
                              style: CustomTextStyles
                                  .bodySmallOpenSansBluegray30003_2,
                            ),
                          ],
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        top: 9,
                      ),
                      child: Row(
                        children: [
                          Opacity(
                            opacity: 0.2,
                            child: CustomTextFormField(
                              width: getHorizontalSize(
                                107,
                              ),
                              controller: seniordesignerController,
                              contentPadding: getPadding(
                                left: 17,
                                top: 5,
                                right: 17,
                                bottom: 5,
                              ),
                              textStyle: CustomTextStyles.bodySmall10,
                              hintText: "Senior designer",
                              hintStyle: CustomTextStyles.bodySmall10,
                              filled: true,
                              fillColor: appTheme.blueGray1006c,
                              defaultBorderDecoration:
                                  TextFormFieldStyleHelper.fillBluegray1006c,
                              enabledBorderDecoration:
                                  TextFormFieldStyleHelper.fillBluegray1006c,
                              focusedBorderDecoration:
                                  TextFormFieldStyleHelper.fillBluegray1006c,
                              disabledBorderDecoration:
                                  TextFormFieldStyleHelper.fillBluegray1006c,
                            ),
                          ),
                          Opacity(
                            opacity: 0.2,
                            child: Container(
                              width: getHorizontalSize(
                                77,
                              ),
                              margin: getMargin(
                                left: 8,
                              ),
                              padding: getPadding(
                                left: 18,
                                top: 5,
                                right: 18,
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
                                77,
                              ),
                              margin: getMargin(
                                left: 28,
                              ),
                              padding: getPadding(
                                left: 24,
                                top: 4,
                                right: 24,
                                bottom: 4,
                              ),
                              decoration: AppDecoration.txtFill1.copyWith(
                                borderRadius:
                                    BorderRadiusStyle.txtRoundedBorder8,
                              ),
                              child: Text(
                                "Apply",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: CustomTextStyles.bodySmall10,
                              ),
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
