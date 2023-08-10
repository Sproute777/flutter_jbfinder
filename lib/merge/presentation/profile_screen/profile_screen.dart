import '../profile_screen/widgets/profile_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:the_s_application4/core/app_export.dart';
import 'package:the_s_application4/presentation/posting_page/posting_page.dart';
import 'package:the_s_application4/widgets/custom_bottom_bar.dart';
import 'package:the_s_application4/widgets/custom_elevated_button.dart';
import 'package:the_s_application4/widgets/custom_floating_button.dart';

class ProfileScreen extends StatelessWidget {
  ProfileScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

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
              Container(
                padding: getPadding(
                  left: 13,
                  top: 21,
                  right: 13,
                  bottom: 21,
                ),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      ImageConstant.imgGroup84,
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Align(
                      alignment: Alignment.centerRight,
                      child: Padding(
                        padding: getPadding(
                          top: 5,
                          right: 10,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            CustomImageView(
                              svgPath: ImageConstant.imgShareOnprimarycontainer,
                              height: getSize(
                                24,
                              ),
                              width: getSize(
                                24,
                              ),
                            ),
                            CustomImageView(
                              svgPath:
                                  ImageConstant.imgSettingsOnprimarycontainer,
                              height: getSize(
                                24,
                              ),
                              width: getSize(
                                24,
                              ),
                              margin: getMargin(
                                left: 15,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 14,
                        top: 76,
                      ),
                      child: Text(
                        "California, USA",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: CustomTextStyles.bodySmallOnPrimaryContainer_1,
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 14,
                        top: 26,
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: getPadding(
                              top: 5,
                              bottom: 7,
                            ),
                            child: RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "120k",
                                    style: CustomTextStyles
                                        .titleSmallOnPrimaryContainer_1,
                                  ),
                                  TextSpan(
                                    text: " Follower",
                                    style: CustomTextStyles
                                        .bodySmallOnPrimaryContainer,
                                  ),
                                ],
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 21,
                              top: 6,
                              bottom: 6,
                            ),
                            child: RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "23k",
                                    style: CustomTextStyles
                                        .titleSmallOnPrimaryContainer_1,
                                  ),
                                  TextSpan(
                                    text: " Following",
                                    style: CustomTextStyles
                                        .bodySmallOnPrimaryContainer,
                                  ),
                                ],
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                          Opacity(
                            opacity: 0.1,
                            child: CustomElevatedButton(
                              text: "Edit profile",
                              margin: getMargin(
                                left: 35,
                              ),
                              rightIcon: Container(
                                margin: getMargin(
                                  left: 10,
                                ),
                                child: CustomImageView(
                                  svgPath:
                                      ImageConstant.imgEditOnprimarycontainer,
                                ),
                              ),
                              buttonStyle: CustomButtonStyles
                                  .fillOnPrimaryContainer
                                  .copyWith(
                                      fixedSize:
                                          MaterialStateProperty.all<Size>(Size(
                                getHorizontalSize(
                                  120,
                                ),
                                getVerticalSize(
                                  30,
                                ),
                              ))),
                              buttonTextStyle: CustomTextStyles
                                  .bodySmallOnPrimaryContainer_1,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Padding(
                  padding: getPadding(
                    left: 20,
                    top: 20,
                    right: 20,
                  ),
                  child: ListView.separated(
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
                    itemCount: 6,
                    itemBuilder: (context, index) {
                      return ProfileItemWidget();
                    },
                  ),
                ),
              ),
              Container(
                width: double.maxFinite,
                margin: getMargin(
                  top: 30,
                ),
                padding: getPadding(
                  left: 27,
                  top: 15,
                  right: 27,
                  bottom: 15,
                ),
                decoration: AppDecoration.outline6,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomImageView(
                      svgPath: ImageConstant.imgHomeBlueGray30005,
                      height: getSize(
                        24,
                      ),
                      width: getSize(
                        24,
                      ),
                      margin: getMargin(
                        left: 1,
                        bottom: 16,
                      ),
                    ),
                    CustomImageView(
                      svgPath: ImageConstant.imgCarOrange400,
                      height: getSize(
                        24,
                      ),
                      width: getSize(
                        24,
                      ),
                      margin: getMargin(
                        left: 50,
                        bottom: 16,
                      ),
                    ),
                    Spacer(),
                    CustomImageView(
                      svgPath: ImageConstant.imgBookmarkBlueGray30006,
                      height: getSize(
                        24,
                      ),
                      width: getSize(
                        24,
                      ),
                      margin: getMargin(
                        bottom: 16,
                      ),
                    ),
                    CustomImageView(
                      svgPath: ImageConstant.imgBookmarkBlueGray3000624x24,
                      height: getSize(
                        24,
                      ),
                      width: getSize(
                        24,
                      ),
                      margin: getMargin(
                        left: 50,
                        bottom: 16,
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
        floatingActionButton: CustomFloatingButton(
          height: 36,
          width: 36,
          child: CustomImageView(
            svgPath: ImageConstant.imgInfoOnprimarycontainer,
            height: getVerticalSize(
              18.0,
            ),
            width: getHorizontalSize(
              18.0,
            ),
          ),
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
