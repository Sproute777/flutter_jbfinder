import 'package:flutter/material.dart';

import '../export.dart';
import '../post_page/post_page.dart';

class PostTabContainerScreen extends StatefulWidget {
  const PostTabContainerScreen({Key? key}) : super(key: key);

  @override
  PostTabContainerScreenState createState() => PostTabContainerScreenState();
}

// ignore_for_file: must_be_immutable
class PostTabContainerScreenState extends State<PostTabContainerScreen>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  late TabController tabmenuController;

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
            body: SizedBox(
                width: double.maxFinite,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          height: getVerticalSize(192),
                          width: double.maxFinite,
                          margin: getMargin(top: 29),
                          child: Stack(alignment: Alignment.center, children: [
                            CustomImageView(
                                svgPath: ImageConstant.imgOverflowmenu,
                                height: getSize(24),
                                width: getSize(24),
                                alignment: Alignment.topRight,
                                margin: getMargin(top: 1, right: 20)),
                            Align(
                                alignment: Alignment.center,
                                child: SizedBox(
                                    height: getVerticalSize(192),
                                    width: double.maxFinite,
                                    child: Stack(
                                        alignment: Alignment.bottomCenter,
                                        children: [
                                          CustomImageView(
                                              svgPath: ImageConstant
                                                  .imgOverflowmenuGray90002,
                                              height: getSize(24),
                                              width: getSize(24),
                                              alignment: Alignment.topRight,
                                              margin: getMargin(right: 25)),
                                          Align(
                                              alignment: Alignment.bottomCenter,
                                              child: SizedBox(
                                                  height: getVerticalSize(177),
                                                  width: double.maxFinite,
                                                  child: Stack(
                                                      alignment:
                                                          Alignment.topCenter,
                                                      children: [
                                                        Align(
                                                            alignment: Alignment
                                                                .bottomCenter,
                                                            child: Container(
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            29,
                                                                        top: 20,
                                                                        right:
                                                                            29,
                                                                        bottom:
                                                                            20),
                                                                decoration:
                                                                    AppDecoration
                                                                        .fill6,
                                                                child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .min,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .end,
                                                                    children: [
                                                                      Padding(
                                                                          padding: getPadding(
                                                                              top:
                                                                                  15),
                                                                          child: Text(
                                                                              "UI/UX Designer",
                                                                              overflow: TextOverflow.ellipsis,
                                                                              textAlign: TextAlign.left,
                                                                              style: CustomTextStyles.titleMediumGray90002)),
                                                                      Container(
                                                                          height: getVerticalSize(
                                                                              22),
                                                                          width: getHorizontalSize(
                                                                              315),
                                                                          margin: getMargin(
                                                                              top:
                                                                                  14),
                                                                          child: TabBar(
                                                                              controller: tabviewController,
                                                                              tabs: [
                                                                                Tab(child: Text("Google", overflow: TextOverflow.ellipsis)),
                                                                                Tab(child: Text("California", overflow: TextOverflow.ellipsis)),
                                                                                Tab(child: Text("1 day ago", overflow: TextOverflow.ellipsis))
                                                                              ]))
                                                                    ]))),
                                                        Align(
                                                            alignment: Alignment
                                                                .topCenter,
                                                            child: Card(
                                                                clipBehavior: Clip
                                                                    .antiAlias,
                                                                elevation: 0,
                                                                margin:
                                                                    EdgeInsets
                                                                        .all(0),
                                                                color: appTheme
                                                                    .lightBlue100,
                                                                shape: RoundedRectangleBorder(
                                                                    borderRadius:
                                                                        BorderRadiusStyle
                                                                            .circleBorder42),
                                                                child:
                                                                    Container(
                                                                        height: getSize(
                                                                            84),
                                                                        width: getSize(
                                                                            84),
                                                                        padding: getPadding(
                                                                            all:
                                                                                14),
                                                                        decoration: AppDecoration
                                                                            .fill2
                                                                            .copyWith(borderRadius: BorderRadiusStyle.circleBorder42),
                                                                        child: Stack(children: [
                                                                          CustomImageView(
                                                                              imagePath: ImageConstant.imgGoogle1,
                                                                              height: getSize(54),
                                                                              width: getSize(54),
                                                                              alignment: Alignment.center)
                                                                        ]))))
                                                      ]))),
                                          CustomImageView(
                                              svgPath: ImageConstant
                                                  .imgArrowleftGray90002,
                                              height: getSize(24),
                                              width: getSize(24),
                                              alignment: Alignment.topLeft,
                                              margin: getMargin(left: 17),
                                              onTap: () {
                                                onTapImgArrowleft(context);
                                              })
                                        ])))
                          ])),
                      Container(
                          height: getVerticalSize(50),
                          width: getHorizontalSize(335),
                          margin: getMargin(top: 68),
                          decoration: BoxDecoration(
                              color: theme.colorScheme.onPrimaryContainer,
                              borderRadius:
                                  BorderRadius.circular(getHorizontalSize(10))),
                          child: TabBar(
                              controller: tabmenuController,
                              labelColor: theme.colorScheme.onPrimaryContainer,
                              labelStyle: TextStyle(),
                              unselectedLabelColor: appTheme.gray90004,
                              unselectedLabelStyle: TextStyle(),
                              indicatorPadding: getPadding(all: 5.0),
                              indicator: BoxDecoration(
                                  color: appTheme.orangeA20001,
                                  borderRadius: BorderRadius.circular(
                                      getHorizontalSize(10))),
                              tabs: [
                                Tab(
                                    child: Text("About us",
                                        overflow: TextOverflow.ellipsis)),
                                Tab(
                                    child: Text("Post",
                                        overflow: TextOverflow.ellipsis)),
                                Tab(
                                    child: Text("Jobs",
                                        overflow: TextOverflow.ellipsis))
                              ])),
                      SizedBox(
                          height: getVerticalSize(473),
                          child: TabBarView(
                              controller: tabviewController,
                              children: [
                                PostPage(),
                                PostPage(),
                                PostPage(),
                                PostPage(),
                                PostPage(),
                                PostPage()
                              ]))
                    ]))));
  }

  /// Navigates back to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is used
  /// to navigate back to the previous screen.
  onTapImgArrowleft(BuildContext context) {
    Navigator.pop(context);
  }
}
