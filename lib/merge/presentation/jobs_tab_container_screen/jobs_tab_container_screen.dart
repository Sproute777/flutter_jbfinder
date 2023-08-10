import 'package:flutter/material.dart';
import 'package:the_s_application4/core/app_export.dart';
import 'package:the_s_application4/presentation/about_us_page/about_us_page.dart';
import 'package:the_s_application4/presentation/jobs_page/jobs_page.dart';
import 'package:the_s_application4/presentation/post_page/post_page.dart';
import 'package:the_s_application4/widgets/custom_elevated_button.dart';

class JobsTabContainerScreen extends StatefulWidget {
  const JobsTabContainerScreen({Key? key}) : super(key: key);

  @override
  JobsTabContainerScreenState createState() => JobsTabContainerScreenState();
}

// ignore_for_file: must_be_immutable
class JobsTabContainerScreenState extends State<JobsTabContainerScreen>
    with TickerProviderStateMixin {
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
            body: SizedBox(
                width: double.maxFinite,
                child: Padding(
                    padding: getPadding(top: 28),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                              height: getVerticalSize(192),
                              width: getHorizontalSize(374),
                              child: Stack(
                                  alignment: Alignment.bottomCenter,
                                  children: [
                                    CustomImageView(
                                        svgPath: ImageConstant
                                            .imgOverflowmenuGray90002,
                                        height: getSize(24),
                                        width: getSize(24),
                                        alignment: Alignment.topRight,
                                        margin: getMargin(right: 24)),
                                    Align(
                                        alignment: Alignment.bottomCenter,
                                        child: SizedBox(
                                            height: getVerticalSize(177),
                                            width: getHorizontalSize(374),
                                            child: Stack(
                                                alignment: Alignment.topCenter,
                                                children: [
                                                  Align(
                                                      alignment: Alignment
                                                          .bottomCenter,
                                                      child: Container(
                                                          padding: getPadding(
                                                              left: 29,
                                                              top: 20,
                                                              right: 29,
                                                              bottom: 20),
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
                                                                    padding:
                                                                        getPadding(
                                                                            top:
                                                                                15),
                                                                    child: Text(
                                                                        "UI/UX Designer",
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .left,
                                                                        style: CustomTextStyles
                                                                            .titleMediumGray90002)),
                                                                Padding(
                                                                    padding:
                                                                        getPadding(
                                                                            top:
                                                                                14),
                                                                    child: Row(
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment
                                                                                .center,
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment.end,
                                                                        children: [
                                                                          Padding(
                                                                              padding: getPadding(top: 1),
                                                                              child: Text("Google", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: theme.textTheme.bodyLarge)),
                                                                          Container(
                                                                              height: getSize(7),
                                                                              width: getSize(7),
                                                                              margin: getMargin(left: 22, top: 9, bottom: 5),
                                                                              decoration: BoxDecoration(color: appTheme.gray90002, borderRadius: BorderRadius.circular(getHorizontalSize(3)))),
                                                                          Padding(
                                                                              padding: getPadding(left: 32, bottom: 1),
                                                                              child: Text("California", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: theme.textTheme.bodyLarge)),
                                                                          Container(
                                                                              height: getSize(7),
                                                                              width: getSize(7),
                                                                              margin: getMargin(left: 32, top: 9, bottom: 5),
                                                                              decoration: BoxDecoration(color: appTheme.gray90002, borderRadius: BorderRadius.circular(getHorizontalSize(3)))),
                                                                          Padding(
                                                                              padding: getPadding(left: 24, top: 1),
                                                                              child: Text("1 day ago", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: theme.textTheme.bodyLarge))
                                                                        ]))
                                                              ]))),
                                                  Align(
                                                      alignment:
                                                          Alignment.topCenter,
                                                      child: Card(
                                                          clipBehavior:
                                                              Clip.antiAlias,
                                                          elevation: 0,
                                                          margin:
                                                              EdgeInsets.all(0),
                                                          color: appTheme
                                                              .lightBlue100,
                                                          shape: RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadiusStyle
                                                                      .circleBorder42),
                                                          child: Container(
                                                              height:
                                                                  getSize(84),
                                                              width:
                                                                  getSize(84),
                                                              padding:
                                                                  getPadding(
                                                                      all: 14),
                                                              decoration: AppDecoration
                                                                  .fill2
                                                                  .copyWith(
                                                                      borderRadius:
                                                                          BorderRadiusStyle
                                                                              .circleBorder42),
                                                              child: Stack(
                                                                  children: [
                                                                    CustomImageView(
                                                                        imagePath:
                                                                            ImageConstant
                                                                                .imgGoogle1,
                                                                        height: getSize(
                                                                            54),
                                                                        width: getSize(
                                                                            54),
                                                                        alignment:
                                                                            Alignment.center)
                                                                  ]))))
                                                ]))),
                                    CustomImageView(
                                        svgPath:
                                            ImageConstant.imgArrowleftGray90002,
                                        height: getSize(24),
                                        width: getSize(24),
                                        alignment: Alignment.topLeft,
                                        margin: getMargin(left: 17),
                                        onTap: () {
                                          onTapImgArrowleft(context);
                                        })
                                  ])),
                          Padding(
                              padding: getPadding(left: 21, top: 18),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Opacity(
                                        opacity: 0.2,
                                        child: CustomElevatedButton(
                                            text: "Follow",
                                            leftIcon: Container(
                                                margin: getMargin(right: 10),
                                                child: CustomImageView(
                                                    svgPath:
                                                        ImageConstant.imgPlus)),
                                            buttonStyle: CustomButtonStyles
                                                .fillDeeporange100
                                                .copyWith(
                                                    fixedSize: MaterialStateProperty
                                                        .all<Size>(Size(
                                                            getHorizontalSize(
                                                                159),
                                                            getVerticalSize(
                                                                40)))),
                                            buttonTextStyle: CustomTextStyles
                                                .bodySmallRedA200)),
                                    Opacity(
                                        opacity: 0.2,
                                        child: CustomElevatedButton(
                                            text: "Visit website",
                                            margin: getMargin(left: 17),
                                            leftIcon: Container(
                                                margin: getMargin(right: 10),
                                                child: CustomImageView(
                                                    svgPath:
                                                        ImageConstant.imgCut)),
                                            buttonStyle: CustomButtonStyles
                                                .fillDeeporange100
                                                .copyWith(
                                                    fixedSize: MaterialStateProperty
                                                        .all<Size>(Size(
                                                            getHorizontalSize(
                                                                159),
                                                            getVerticalSize(
                                                                40)))),
                                            buttonTextStyle: CustomTextStyles
                                                .bodySmallRedA200))
                                  ])),
                          Container(
                              height: getVerticalSize(50),
                              width: getHorizontalSize(335),
                              margin: getMargin(top: 18),
                              decoration: BoxDecoration(
                                  color: theme.colorScheme.onPrimaryContainer,
                                  borderRadius: BorderRadius.circular(
                                      getHorizontalSize(10))),
                              child: TabBar(
                                  controller: tabviewController,
                                  labelColor:
                                      theme.colorScheme.onPrimaryContainer,
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
                              height: getVerticalSize(466),
                              child: TabBarView(
                                  controller: tabviewController,
                                  children: [
                                    AboutUsPage(),
                                    PostPage(),
                                    JobsPage()
                                  ]))
                        ])))));
  }

  /// Navigates back to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is used
  /// to navigate back to the previous screen.
  onTapImgArrowleft(BuildContext context) {
    Navigator.pop(context);
  }
}
