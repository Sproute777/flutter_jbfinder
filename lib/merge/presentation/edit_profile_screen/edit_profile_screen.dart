import '../edit_profile_screen/widgets/chipviewleaders_item_widget.dart';
import '../edit_profile_screen/widgets/edit_profile_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:the_s_application4/core/app_export.dart';
import 'package:the_s_application4/presentation/posting_page/posting_page.dart';
import 'package:the_s_application4/widgets/app_bar/appbar_image.dart';
import 'package:the_s_application4/widgets/app_bar/custom_app_bar.dart';
import 'package:the_s_application4/widgets/custom_bottom_bar.dart';
import 'package:the_s_application4/widgets/custom_elevated_button.dart';

class EditProfileScreen extends StatelessWidget {
  EditProfileScreen({Key? key})
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
                margin: getMargin(
                  left: 1,
                ),
                padding: getPadding(
                  top: 21,
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
                    CustomAppBar(
                      height: getVerticalSize(
                        72,
                      ),
                      leadingWidth: 78,
                      leading: CustomImageView(
                        imagePath: ImageConstant.imgImage50x50,
                        height: getSize(
                          50,
                        ),
                        width: getSize(
                          50,
                        ),
                        radius: BorderRadius.circular(
                          getHorizontalSize(
                            25,
                          ),
                        ),
                        margin: getMargin(
                          left: 28,
                          top: 17,
                        ),
                      ),
                      actions: [
                        AppbarImage(
                          height: getSize(
                            24,
                          ),
                          width: getSize(
                            24,
                          ),
                          svgPath: ImageConstant.imgShareOnprimarycontainer,
                          margin: getMargin(
                            left: 22,
                            right: 43,
                          ),
                        ),
                        AppbarImage(
                          height: getSize(
                            24,
                          ),
                          width: getSize(
                            24,
                          ),
                          svgPath: ImageConstant.imgSettingsOnprimarycontainer,
                          margin: getMargin(
                            left: 15,
                            right: 65,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: getPadding(
                        left: 28,
                        top: 13,
                      ),
                      child: Text(
                        "Orlando Diggs",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style:
                            CustomTextStyles.titleSmallOnPrimaryContainerMedium,
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 27,
                        top: 1,
                      ),
                      child: Text(
                        "California, USA",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: CustomTextStyles.bodySmallOnPrimaryContainer_1,
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: getPadding(
                          left: 27,
                          top: 26,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
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
                                            MaterialStateProperty.all<Size>(
                                                Size(
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
                    ),
                  ],
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  padding: getPadding(
                    top: 20,
                  ),
                  child: Padding(
                    padding: getPadding(
                      left: 20,
                      right: 20,
                      bottom: 5,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          padding: getPadding(
                            left: 20,
                            top: 19,
                            right: 20,
                            bottom: 19,
                          ),
                          decoration: AppDecoration.fill10.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder15,
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
                                  children: [
                                    CustomImageView(
                                      svgPath: ImageConstant.imgFileOrange400,
                                      height: getSize(
                                        24,
                                      ),
                                      width: getSize(
                                        24,
                                      ),
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        left: 10,
                                        top: 1,
                                        bottom: 3,
                                      ),
                                      child: Text(
                                        "About me",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: theme.textTheme.titleSmall,
                                      ),
                                    ),
                                    Spacer(),
                                    CustomImageView(
                                      svgPath: ImageConstant.imgEdit,
                                      height: getSize(
                                        24,
                                      ),
                                      width: getSize(
                                        24,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  top: 20,
                                ),
                                child: Divider(
                                  height: getVerticalSize(
                                    1,
                                  ),
                                  thickness: getVerticalSize(
                                    1,
                                  ),
                                  color: appTheme.gray30001,
                                ),
                              ),
                              Container(
                                width: getHorizontalSize(
                                  263,
                                ),
                                margin: getMargin(
                                  top: 19,
                                  right: 31,
                                ),
                                child: Text(
                                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lectus id commodo egestas metus interdum dolor.",
                                  maxLines: 3,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: CustomTextStyles.bodyMediumDMSans_1,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: getMargin(
                            top: 16,
                          ),
                          padding: getPadding(
                            left: 19,
                            top: 17,
                            right: 19,
                            bottom: 17,
                          ),
                          decoration: AppDecoration.fill10.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder15,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Padding(
                                padding: getPadding(
                                  top: 5,
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    CustomImageView(
                                      svgPath: ImageConstant.imgTrash24x24,
                                      height: getSize(
                                        24,
                                      ),
                                      width: getSize(
                                        24,
                                      ),
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        left: 10,
                                        top: 3,
                                        bottom: 2,
                                      ),
                                      child: Text(
                                        "Work experience",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: theme.textTheme.titleSmall,
                                      ),
                                    ),
                                    Spacer(),
                                    CustomImageView(
                                      svgPath:
                                          ImageConstant.imgPlusDeepOrangeA100,
                                      height: getSize(
                                        24,
                                      ),
                                      width: getSize(
                                        24,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  top: 20,
                                ),
                                child: Divider(
                                  height: getVerticalSize(
                                    1,
                                  ),
                                  thickness: getVerticalSize(
                                    1,
                                  ),
                                  color: appTheme.gray30001,
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  top: 19,
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: getPadding(
                                        top: 1,
                                      ),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Manager",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: theme.textTheme.titleSmall,
                                          ),
                                          Padding(
                                            padding: getPadding(
                                              top: 8,
                                            ),
                                            child: Text(
                                              "Amazon Inc",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: theme.textTheme.bodySmall,
                                            ),
                                          ),
                                          Padding(
                                            padding: getPadding(
                                              top: 5,
                                            ),
                                            child: Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "Jan 2015 - Feb 2022",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: CustomTextStyles
                                                      .bodySmallOpenSans,
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
                                                    bottom: 7,
                                                  ),
                                                  decoration: BoxDecoration(
                                                    color:
                                                        appTheme.blueGray70001,
                                                    borderRadius:
                                                        BorderRadius.circular(
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
                                                    "5 Years",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: CustomTextStyles
                                                        .bodySmallOpenSans,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    CustomImageView(
                                      svgPath: ImageConstant.imgEdit,
                                      height: getSize(
                                        24,
                                      ),
                                      width: getSize(
                                        24,
                                      ),
                                      margin: getMargin(
                                        bottom: 44,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: getMargin(
                            top: 15,
                          ),
                          padding: getPadding(
                            left: 20,
                            top: 17,
                            right: 20,
                            bottom: 17,
                          ),
                          decoration: AppDecoration.fill10.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder15,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: getPadding(
                                  top: 3,
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    CustomImageView(
                                      svgPath: ImageConstant.imgIcon,
                                      height: getVerticalSize(
                                        26,
                                      ),
                                      width: getHorizontalSize(
                                        24,
                                      ),
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        left: 10,
                                        top: 4,
                                        bottom: 3,
                                      ),
                                      child: Text(
                                        "Education",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: theme.textTheme.titleSmall,
                                      ),
                                    ),
                                    Spacer(),
                                    CustomImageView(
                                      svgPath:
                                          ImageConstant.imgPlusDeepOrangeA100,
                                      height: getSize(
                                        24,
                                      ),
                                      width: getSize(
                                        24,
                                      ),
                                      margin: getMargin(
                                        top: 2,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  top: 20,
                                ),
                                child: Divider(
                                  height: getVerticalSize(
                                    1,
                                  ),
                                  thickness: getVerticalSize(
                                    1,
                                  ),
                                  color: appTheme.gray30001,
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  top: 19,
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: getPadding(
                                        top: 1,
                                      ),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Information Technology",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: theme.textTheme.titleSmall,
                                          ),
                                          Padding(
                                            padding: getPadding(
                                              top: 9,
                                            ),
                                            child: Text(
                                              "University of Oxford",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: theme.textTheme.bodySmall,
                                            ),
                                          ),
                                          Padding(
                                            padding: getPadding(
                                              top: 4,
                                            ),
                                            child: Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.end,
                                              children: [
                                                Padding(
                                                  padding: getPadding(
                                                    top: 1,
                                                  ),
                                                  child: Text(
                                                    "Sep 2010 - Aug 2013 ",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: CustomTextStyles
                                                        .bodySmallOpenSans,
                                                  ),
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
                                                    bottom: 7,
                                                  ),
                                                  decoration: BoxDecoration(
                                                    color:
                                                        appTheme.blueGray70001,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                      getHorizontalSize(
                                                        1,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: getPadding(
                                                    left: 5,
                                                    bottom: 1,
                                                  ),
                                                  child: Text(
                                                    "5 Years",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: CustomTextStyles
                                                        .bodySmallOpenSans,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    CustomImageView(
                                      svgPath: ImageConstant.imgEdit,
                                      height: getSize(
                                        24,
                                      ),
                                      width: getSize(
                                        24,
                                      ),
                                      margin: getMargin(
                                        bottom: 44,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: getMargin(
                            top: 15,
                          ),
                          padding: getPadding(
                            all: 20,
                          ),
                          decoration: AppDecoration.fill10.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder15,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: getPadding(
                                  top: 2,
                                ),
                                child: Row(
                                  children: [
                                    CustomImageView(
                                      svgPath: ImageConstant.imgIconOrange400,
                                      height: getSize(
                                        24,
                                      ),
                                      width: getSize(
                                        24,
                                      ),
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        left: 10,
                                        top: 1,
                                        bottom: 3,
                                      ),
                                      child: Text(
                                        "Skill",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: theme.textTheme.titleSmall,
                                      ),
                                    ),
                                    Spacer(),
                                    CustomImageView(
                                      svgPath: ImageConstant.imgEdit,
                                      height: getSize(
                                        24,
                                      ),
                                      width: getSize(
                                        24,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  top: 20,
                                ),
                                child: Divider(
                                  height: getVerticalSize(
                                    1,
                                  ),
                                  thickness: getVerticalSize(
                                    1,
                                  ),
                                  color: appTheme.gray30001,
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  top: 19,
                                ),
                                child: Wrap(
                                  runSpacing: getVerticalSize(
                                    5,
                                  ),
                                  spacing: getHorizontalSize(
                                    5,
                                  ),
                                  children: List<Widget>.generate(5,
                                      (index) => ChipviewleadersItemWidget()),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            top: 15,
                          ),
                          child: ListView.separated(
                            physics: NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            separatorBuilder: (
                              context,
                              index,
                            ) {
                              return Padding(
                                padding: getPadding(
                                  top: 7.5,
                                  bottom: 7.5,
                                ),
                                child: SizedBox(
                                  width: getHorizontalSize(
                                    295,
                                  ),
                                  child: Divider(
                                    height: getVerticalSize(
                                      1,
                                    ),
                                    thickness: getVerticalSize(
                                      1,
                                    ),
                                    color: appTheme.gray30001,
                                  ),
                                ),
                              );
                            },
                            itemCount: 3,
                            itemBuilder: (context, index) {
                              return EditProfileItemWidget();
                            },
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
