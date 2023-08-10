import '../../core/utils/image_constant.dart';
import '../../routes/app_routes.dart';
import '../../theme/theme_helper.dart';
import '../creat_job_or_post_screen/widgets/creat_job_or_item_widget.dart';
import 'package:flutter/material.dart';

import '../export.dart';
import '../posting_page/posting_page.dart';

class CreatJobOrPostScreen extends StatelessWidget {
  CreatJobOrPostScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray50,
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      ImageConstant.imgGroup84,
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CustomAppBar(
                      height: getVerticalSize(
                        17,
                      ),
                      title: Padding(
                        padding: getPadding(
                          left: 20,
                        ),
                        child: Text(
                          "Hi, Orlando Diggs",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: CustomTextStyles
                              .titleSmallOnPrimaryContainerMedium,
                        ),
                      ),
                      actions: [
                        AppbarImage(
                          height: getVerticalSize(
                            7,
                          ),
                          width: getHorizontalSize(
                            24,
                          ),
                          svgPath: ImageConstant.imgNotification,
                          margin: getMargin(
                            left: 19,
                            bottom: 9,
                          ),
                        ),
                        AppbarImage(
                          height: getVerticalSize(
                            17,
                          ),
                          width: getHorizontalSize(
                            36,
                          ),
                          imagePath: ImageConstant.imgProfile,
                          margin: getMargin(
                            left: 8,
                            right: 19,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: getPadding(
                        left: 20,
                        top: 13,
                        bottom: 30,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: getHorizontalSize(
                                    193,
                                  ),
                                  child: Text(
                                    "Find your dream job here!",
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: CustomTextStyles
                                        .titleLargeOnPrimaryContainer,
                                  ),
                                ),
                                CustomSearchView(
                                  margin: getMargin(
                                    top: 18,
                                  ),
                                  controller: searchController,
                                  hintText: "Search",
                                  hintStyle:
                                      CustomTextStyles.bodySmallBluegray30002,
                                  textStyle:
                                      CustomTextStyles.bodySmallBluegray30002,
                                  prefix: Container(
                                    margin: getMargin(
                                      left: 15,
                                      top: 8,
                                      right: 10,
                                      bottom: 8,
                                    ),
                                    child: CustomImageView(
                                      svgPath:
                                          ImageConstant.imgSearchBlueGray30004,
                                    ),
                                  ),
                                  prefixConstraints: BoxConstraints(
                                    maxHeight: getVerticalSize(
                                      40,
                                    ),
                                  ),
                                  suffix: Padding(
                                    padding: EdgeInsets.only(
                                      right: getHorizontalSize(
                                        15,
                                      ),
                                    ),
                                    child: IconButton(
                                      onPressed: () {
                                        searchController.clear();
                                      },
                                      icon: Icon(
                                        Icons.clear,
                                        color: Colors.grey.shade600,
                                      ),
                                    ),
                                  ),
                                  filled: true,
                                  fillColor:
                                      theme.colorScheme.onPrimaryContainer,
                                  contentPadding: getPadding(
                                    top: 12,
                                    right: 30,
                                    bottom: 12,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          CustomIconButton(
                            height: 40,
                            width: 40,
                            margin: getMargin(
                              left: 15,
                              top: 69,
                            ),
                            padding: getPadding(
                              all: 8,
                            ),
                            decoration:
                                IconButtonStyleHelper.outlineBluegray2003fTL101,
                            child: CustomImageView(
                              svgPath: ImageConstant.imgSettings,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: SizedBox(
                    height: mediaQueryData.size.height,
                    width: double.maxFinite,
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        Align(
                          alignment: Alignment.topCenter,
                          child: Padding(
                            padding: getPadding(
                              left: 20,
                              top: 196,
                              right: 19,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: getPadding(
                                    right: 1,
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Specialization",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: theme.textTheme.titleMedium,
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          top: 1,
                                          bottom: 2,
                                        ),
                                        child: Text(
                                          "View all",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: CustomTextStyles
                                              .bodySmallOpenSansBluegray30003_1,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    top: 14,
                                  ),
                                  child: GridView.builder(
                                    shrinkWrap: true,
                                    gridDelegate:
                                        SliverGridDelegateWithFixedCrossAxisCount(
                                      mainAxisExtent: getVerticalSize(
                                        118,
                                      ),
                                      crossAxisCount: 3,
                                      mainAxisSpacing: getHorizontalSize(
                                        11,
                                      ),
                                      crossAxisSpacing: getHorizontalSize(
                                        11,
                                      ),
                                    ),
                                    physics: NeverScrollableScrollPhysics(),
                                    itemCount: 6,
                                    itemBuilder: (context, index) {
                                      return CreatJobOrItemWidget();
                                    },
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
                              left: 20,
                              right: 20,
                              bottom: 77,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  "Job Recommendation",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: theme.textTheme.titleMedium,
                                ),
                                Container(
                                  margin: getMargin(
                                    top: 16,
                                  ),
                                  padding: getPadding(
                                    left: 20,
                                    top: 15,
                                    right: 20,
                                    bottom: 15,
                                  ),
                                  decoration: AppDecoration.outline.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder20,
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: getPadding(
                                          top: 4,
                                        ),
                                        child: Row(
                                          children: [
                                            CustomIconButton(
                                              height: 40,
                                              width: 40,
                                              padding: getPadding(
                                                all: 7,
                                              ),
                                              child: CustomImageView(
                                                imagePath:
                                                    ImageConstant.imgGoogle1,
                                              ),
                                            ),
                                            Padding(
                                              padding: getPadding(
                                                left: 10,
                                                top: 1,
                                              ),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    "UI/UX Designer",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: theme
                                                        .textTheme.titleSmall,
                                                  ),
                                                  Padding(
                                                    padding: getPadding(
                                                      top: 3,
                                                    ),
                                                    child: Row(
                                                      children: [
                                                        Text(
                                                          "Google inc",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: theme.textTheme
                                                              .bodySmall,
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
                                                          decoration:
                                                              BoxDecoration(
                                                            color: appTheme
                                                                .blueGray70001,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
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
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
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
                                            Spacer(),
                                            CustomImageView(
                                              svgPath:
                                                  ImageConstant.imgBookmark,
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
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          top: 19,
                                        ),
                                        child: RichText(
                                          text: TextSpan(
                                            children: [
                                              TextSpan(
                                                text: "15K",
                                                style:
                                                    theme.textTheme.titleSmall,
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
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          top: 11,
                                        ),
                                        child: Row(
                                          children: [
                                            Opacity(
                                              opacity: 0.2,
                                              child: CustomElevatedButton(
                                                text: "Design",
                                                buttonStyle: CustomButtonStyles
                                                    .fillBluegray1006c
                                                    .copyWith(
                                                        fixedSize:
                                                            MaterialStateProperty
                                                                .all<Size>(Size(
                                                  getHorizontalSize(
                                                    77,
                                                  ),
                                                  getVerticalSize(
                                                    25,
                                                  ),
                                                ))),
                                                buttonTextStyle:
                                                    CustomTextStyles
                                                        .bodySmallOpenSans10,
                                              ),
                                            ),
                                            Opacity(
                                              opacity: 0.2,
                                              child: Container(
                                                margin: getMargin(
                                                  left: 10,
                                                ),
                                                padding: getPadding(
                                                  left: 18,
                                                  top: 4,
                                                  right: 18,
                                                  bottom: 4,
                                                ),
                                                decoration: AppDecoration.fill12
                                                    .copyWith(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .roundedBorder6,
                                                ),
                                                child: Padding(
                                                  padding: getPadding(
                                                    top: 1,
                                                  ),
                                                  child: Text(
                                                    "Full time",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: CustomTextStyles
                                                        .bodySmallOpenSans10,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Opacity(
                                              opacity: 0.2,
                                              child: CustomElevatedButton(
                                                text: "Senior designer",
                                                margin: getMargin(
                                                  left: 10,
                                                ),
                                                buttonStyle: CustomButtonStyles
                                                    .fillBluegray1006c
                                                    .copyWith(
                                                        fixedSize:
                                                            MaterialStateProperty
                                                                .all<Size>(Size(
                                                  getHorizontalSize(
                                                    107,
                                                  ),
                                                  getVerticalSize(
                                                    25,
                                                  ),
                                                ))),
                                                buttonTextStyle:
                                                    CustomTextStyles
                                                        .bodySmallOpenSans10,
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
                        Opacity(
                          opacity: 0.6,
                          child: Align(
                            alignment: Alignment.center,
                            child: Container(
                              height: mediaQueryData.size.height,
                              width: double.maxFinite,
                              decoration: BoxDecoration(
                                color: appTheme.blueGray90090,
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                            padding: getPadding(
                              left: 29,
                              top: 25,
                              right: 29,
                              bottom: 25,
                            ),
                            decoration: AppDecoration.fill10.copyWith(
                              borderRadius: BorderRadiusStyle.customBorderTL20,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomImageView(
                                  svgPath: ImageConstant.imgVector56,
                                  height: getVerticalSize(
                                    4,
                                  ),
                                  width: getHorizontalSize(
                                    30,
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    top: 47,
                                  ),
                                  child: Text(
                                    "What would you like to add?",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: theme.textTheme.titleMedium,
                                  ),
                                ),
                                Container(
                                  width: getHorizontalSize(
                                    284,
                                  ),
                                  margin: getMargin(
                                    left: 16,
                                    top: 9,
                                    right: 15,
                                  ),
                                  child: Text(
                                    "Would you like to post your tips and experiences or create a job?",
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.center,
                                    style: theme.textTheme.bodySmall,
                                  ),
                                ),
                                CustomElevatedButton(
                                  text: "Post".toUpperCase(),
                                  margin: getMargin(
                                    top: 27,
                                  ),
                                  buttonStyle: CustomButtonStyles
                                      .outlineIndigo2002d
                                      .copyWith(
                                          fixedSize:
                                              MaterialStateProperty.all<Size>(
                                                  Size(
                                    double.maxFinite,
                                    getVerticalSize(
                                      50,
                                    ),
                                  ))),
                                  buttonTextStyle: CustomTextStyles
                                      .titleSmallOnPrimaryContainer_2,
                                ),
                                CustomElevatedButton(
                                  text: "Make a job".toUpperCase(),
                                  margin: getMargin(
                                    top: 10,
                                    bottom: 5,
                                  ),
                                  buttonStyle: CustomButtonStyles
                                      .fillDeeppurple10001
                                      .copyWith(
                                          fixedSize:
                                              MaterialStateProperty.all<Size>(
                                                  Size(
                                    double.maxFinite,
                                    getVerticalSize(
                                      50,
                                    ),
                                  ))),
                                  buttonTextStyle: CustomTextStyles
                                      .titleSmallOnPrimaryContainer_2,
                                ),
                              ],
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
