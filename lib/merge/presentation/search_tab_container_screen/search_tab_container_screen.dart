import 'package:flutter/material.dart';

import '../../routes/app_routes.dart';
import '../export.dart';
import '../posting_page/posting_page.dart';
import '../search_page/search_page.dart';

class SearchTabContainerScreen extends StatefulWidget {
  const SearchTabContainerScreen({Key? key}) : super(key: key);

  @override
  SearchTabContainerScreenState createState() =>
      SearchTabContainerScreenState();
}

// ignore_for_file: must_be_immutable
class SearchTabContainerScreenState extends State<SearchTabContainerScreen>
    with TickerProviderStateMixin {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  TextEditingController searchController = TextEditingController();

  TextEditingController locationController = TextEditingController();

  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.gray50,
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                width: double.maxFinite,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          width: double.maxFinite,
                          padding: getPadding(
                              left: 20, top: 30, right: 20, bottom: 30),
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(ImageConstant.imgGroup84),
                                  fit: BoxFit.cover)),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomImageView(
                                    svgPath: ImageConstant.imgArrowleft,
                                    height: getSize(24),
                                    width: getSize(24),
                                    alignment: Alignment.centerLeft,
                                    onTap: () {
                                      onTapImgArrowleft(context);
                                    }),
                                CustomTextFormField(
                                    controller: searchController,
                                    margin:
                                        getMargin(left: 9, top: 34, right: 9),
                                    contentPadding: getPadding(
                                        top: 12, right: 30, bottom: 12),
                                    textStyle:
                                        CustomTextStyles.bodySmallBluegray30003,
                                    hintText: "Design",
                                    hintStyle:
                                        CustomTextStyles.bodySmallBluegray30003,
                                    textInputAction: TextInputAction.next,
                                    prefix: Container(
                                        margin: getMargin(
                                            left: 14,
                                            top: 8,
                                            right: 9,
                                            bottom: 8),
                                        child: CustomImageView(
                                            svgPath: ImageConstant.imgSearch)),
                                    prefixConstraints: BoxConstraints(
                                        maxHeight: getVerticalSize(40)),
                                    filled: true,
                                    fillColor:
                                        theme.colorScheme.onPrimaryContainer,
                                    defaultBorderDecoration:
                                        TextFormFieldStyleHelper
                                            .fillOnPrimaryContainer,
                                    enabledBorderDecoration:
                                        TextFormFieldStyleHelper
                                            .fillOnPrimaryContainer,
                                    focusedBorderDecoration:
                                        TextFormFieldStyleHelper
                                            .fillOnPrimaryContainer,
                                    disabledBorderDecoration:
                                        TextFormFieldStyleHelper
                                            .fillOnPrimaryContainer),
                                CustomTextFormField(
                                    controller: locationController,
                                    margin: getMargin(
                                        left: 10, top: 17, right: 8, bottom: 5),
                                    contentPadding: getPadding(
                                        top: 12, right: 30, bottom: 12),
                                    textStyle:
                                        CustomTextStyles.bodySmallBluegray30003,
                                    hintText: "California, USA",
                                    hintStyle:
                                        CustomTextStyles.bodySmallBluegray30003,
                                    prefix: Container(
                                        margin: getMargin(
                                            left: 14,
                                            top: 8,
                                            right: 9,
                                            bottom: 8),
                                        child: CustomImageView(
                                            svgPath: ImageConstant
                                                .imgLocationOrange400)),
                                    prefixConstraints: BoxConstraints(
                                        maxHeight: getVerticalSize(40)),
                                    filled: true,
                                    fillColor:
                                        theme.colorScheme.onPrimaryContainer,
                                    defaultBorderDecoration:
                                        TextFormFieldStyleHelper
                                            .fillOnPrimaryContainer,
                                    enabledBorderDecoration:
                                        TextFormFieldStyleHelper
                                            .fillOnPrimaryContainer,
                                    focusedBorderDecoration:
                                        TextFormFieldStyleHelper
                                            .fillOnPrimaryContainer,
                                    disabledBorderDecoration:
                                        TextFormFieldStyleHelper
                                            .fillOnPrimaryContainer)
                              ])),
                      Container(
                          height: getVerticalSize(40),
                          width: getHorizontalSize(349),
                          margin: getMargin(top: 20),
                          child: TabBar(controller: tabviewController, tabs: [
                            Tab(
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                  CustomIconButton(
                                      height: 40,
                                      width: 40,
                                      padding: getPadding(all: 8),
                                      decoration: IconButtonStyleHelper
                                          .outlineBluegray2003f,
                                      child: CustomImageView(
                                          svgPath: ImageConstant.imgSettings)),
                                  Opacity(
                                      opacity: 0.2,
                                      child: CustomElevatedButton(
                                          text: "Senior designer",
                                          margin: getMargin(left: 15),
                                          buttonStyle: CustomButtonStyles
                                              .fillBluegray1006c
                                              .copyWith(
                                                  fixedSize:
                                                      MaterialStateProperty
                                                          .all<Size>(Size(
                                                              getHorizontalSize(
                                                                  114),
                                                              getVerticalSize(
                                                                  40)))),
                                          buttonTextStyle:
                                              theme.textTheme.bodySmall!))
                                ])),
                            Tab(
                                child: Text("Designer",
                                    overflow: TextOverflow.ellipsis)),
                            Tab(
                                child: Text("Full-time",
                                    overflow: TextOverflow.ellipsis))
                          ])),
                      SizedBox(
                          height: getVerticalSize(460),
                          child: TabBarView(
                              controller: tabviewController,
                              children: [
                                SearchPage(),
                                SearchPage(),
                                SearchPage()
                              ]))
                    ])),
            bottomNavigationBar:
                CustomBottomBar(onChanged: (BottomBarEnum type) {
              Navigator.pushNamed(
                  navigatorKey.currentContext!, getCurrentRoute(type));
            })));
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

  /// Navigates back to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is used
  /// to navigate back to the previous screen.
  onTapImgArrowleft(BuildContext context) {
    Navigator.pop(context);
  }
}
